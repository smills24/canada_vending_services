class PagesController < ApplicationController

  def home
    @title = "Home"
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
