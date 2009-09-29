class LocationsController < ApplicationController
  def index
    redirect_to root_path and return if request.path == "/locations"
  end

  def poll
    i = FindMyIphone.new(ENV["mobilemeuser"],ENV["mobilemepw"])
    location = Location.new_from_results(i.locateMe)
    location.save! unless location.same_as_last?
    render :json => location
  end

end
