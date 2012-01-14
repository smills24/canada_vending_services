require 'spec_helper'

describe SessionsController do
  render_views

  describe "GET new" do
    it "should be successful" do
      get :new
      response.should be_success
    end

    it "should have the correct title" do
      get :new
      response.should have_selector("title", :content => "Log in")
    end
  end

  describe 'POST create' do

    it "should re-render the new page when invalid" do
      attrs = { :email => "sup@yo.com", :password => "pass1" }
      post :create, :session => attrs

      response.should render_template('new')
      response.should have_selector("title", :content => "Log in")
      flash.now[:alert].should =~ /invalid/i
    end

    describe "with valid email and pasword" do
      
      before(:each) do
        @user = Factory(:user)
        @attrs = { :email => @user.email, :password => @user.password }
      end

      it "should redirect to the profile page" do
        post :create, :session => @attrs
        #response.should render_template(user_path(@user))
      end
    end
  end
end
