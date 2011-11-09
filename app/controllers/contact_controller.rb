class ContactController < ApplicationController

  def new
    @email = Email.new
  end

  def create
    @email = Email.new(params[:email])
    
    if @email.valid?
      Contact.new_email(@email).deliver
      redirect_to(root_path, :notice => "Email was successfully sent.")
    else
      flash.now.alert = "Please fill all fields."
      render :new
    end
  end

end
