class ContactController < ApplicationController

  def new
    @title = "Contact Us"
    @email = Email.new
  end

  def create
    @email = Email.new(params[:email])
    
    if @email.valid?
      Contact.new_message(@email).deliver
      redirect_to(root_path, :notice => "Email was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      @title = "Contact Us"
      render :new
    end
  end
end
