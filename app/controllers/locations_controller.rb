class LocationsController < ApplicationController
  def index
  end

  def poll
    i = FindMyIphone.new(ENV["mobilemeuser"],ENV["mobilemepw"])
    location = i.locateMe
    if location["isRecent"]
      render :json => Location.create!(:lat => location["latitude"], :lng => location["longitude"], :accuracy => location["accuracy"])
    else 
      render :json => Location.last
    end
  end

end
