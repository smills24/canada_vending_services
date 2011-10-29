require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the correct title" do
      get 'home'
      response.should have_selector("title", :content => "Canada Vending Services")
    end
  end

  describe "GET 'contact'" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the correct title" do
      get 'contact'
      response.should have_selector("title", :content => "Contact Us")
    end
  end

  describe "GET 'services'" do
    it "should be successful" do
      get 'services'
      response.should be_success
    end

    it "should have the correct title" do
      get 'services'
      response.should have_selector("title", :content => "Our Services")
    end
  end

  describe "GET 'products'" do
    it "should be successful" do
      get 'products'
      response.should be_success
    end

    it "should have the correct title" do
      get 'products'
      response.should have_selector("title", :content => "Our Products")
    end
  end

  describe "GET 'equipment'" do
    it "should be successful" do
      get 'equipment'
      response.should be_success
    end

    it "should have the correct title" do
      get 'equipment'
      response.should have_selector("title", :content => "Our Equipment")
    end
  end

end
