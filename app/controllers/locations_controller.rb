class LocationsController < ApplicationController
  def index
  end

  def poll
    i = FindMyIphone.new(ENV["mobilemeuser"],ENV["mobilemepw"])
    location = Location.new_from_results(i.locateMe)
    location.save! unless location.same_as_last?
    render :json => location
  end

end
