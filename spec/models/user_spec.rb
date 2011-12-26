require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:first_name => "Sally", :last_name => "Smith", :email => "yo@gmail.com"}
  end

  it "creates a valid user" do
    User.create!(@attr)
  end

  it "validates presence of first name" do
    bad_user = User.new(@attr.merge(:first_name => ""))
    bad_user.should_not be_valid
  end

  it "validates presence of last name" do
    bad_user = User.new(@attr.merge(:last_name => ""))
    bad_user.should_not be_valid
  end

  it "validates presence of email" do
    bad_user = User.new(@attr.merge(:email => ""))
    bad_user.should_not be_valid
  end

  it "should reject long first names" do
    long_name = "b"*51
    long_name_user = User.new(@attr.merge(:first_name => long_name))
    long_name_user.should_not be_valid
  end

  it "should reject long last names" do
    long_name = "b"*51
    long_name_user = User.new(@attr.merge(:last_name => long_name))
    long_name_user.should_not be_valid
  end

  it "should reject invalid email addresses" do
    invalid_emails = %w[sally@foo,org sAlly_SmiTh.bar.com sally.smith@foo]
    invalid_emails.each do |invalid|
      bad_user = User.new(@attr.merge(:email => invalid))
      bad_user.should_not be_valid
    end
  end

  it "should accept valid email addresses" do
    valid_emails = %w[sally@foo.org Sally_Smith@foo.bar.com SALLY.SMITH@foo.co]
    valid_emails.each do |valid|
      good_user = User.new(@attr.merge(:email => valid))
      good_user.should be_valid
    end
  end

  it "should reject non-unique email addresses" do
    User.create!(@attr)
    duplicate_user = User.new(@attr)
    duplicate_user.should_not be_valid
  end

  it "should reject non-unique email addresses case insensitively" do
    User.create!(@attr.merge(:email => @attr[:email].upcase))
    duplicate_user = User.new(@attr)
    duplicate_user.should_not be_valid
  end
end
