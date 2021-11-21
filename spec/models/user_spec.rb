require 'rails_helper'

RSpec.describe User, :type => :model do
  subject {
      User.new(email: "testemail@gmail.com",
               password: "123456789!!!")
  }
  
  it "is valid with an email and password" do
    expect(subject).to be_valid  
  end

  it "is not valid without an email address" do
    subject.email = nil
    expect(subject).to_not be_valid  
  end  
  
  it "is no valid without a password" do
    subject.password = nil
    expect(subject).to_not be_valid  
  end  
end
