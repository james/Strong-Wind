require File.expand_path(File.dirname(__FILE__) + '/../spec_helper')

describe Location do
  before(:each) do
    @valid_attributes = {
      :lat => 1,
      :lng => 1
    }
    @result = {"latitude"=>51.521786, "isLocationAvailable"=>true, "accuracy"=>50, "time"=>"9:22 AM", "date"=>"September 29, 2009", "isLocateFinished"=>true, "isRecent"=>true, "statusString"=>"locate status available", "isOldLocationResult"=>true, "longitude"=>-0.076291, "status"=>1, "isAccurate"=>false}
  end
  
  it "should not be valid without a lat"
  it "should not be valid without a lng"

  it "should create a new instance given valid attributes" do
    Location.create!(@valid_attributes)
  end
  
  it "should be able to save from findmyiphone results hash" do
    location = Location.new_from_results(@result)
    location.lat.should == 51.521786
    location.lng.should == -0.076291
    location.accuracy.should == 50
    location.found_at.should == "September 29, 2009 9:22 AM".to_time
  end
  
  it "should know if it's a duplicate" do
    Location.new_from_results(@result).duplicate_of?(Location.new_from_results(@result)).should be_true
  end
end
