require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe LocationsController do

  #Delete these examples and add some real ones
  it "should use LocationsController" do
    controller.should be_an_instance_of(LocationsController)
  end


  describe "GET 'index'" do
    it "should be successful" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'poll'" do
    it "should be successful" do
      get 'poll'
      response.should be_success
    end
  end
end
