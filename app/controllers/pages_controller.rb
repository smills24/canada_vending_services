class PagesController < ApplicationController

  def home
    @title = "Canada Vending Services"
  end

  def contact 
    @title = "Contact Us"
  end

  def products
    @title = "Our Products"
  end

  def services
    @title = "Our Services"
  end

  def equipment
    @title = "Our Equipment"
  end

end
