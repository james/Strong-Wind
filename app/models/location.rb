class Location < ActiveRecord::Base
  def self.new_from_results(results)
    new(
      :lat => results["latitude"],
      :lng => results["longitude"],
      :accuracy => results["accuracy"],
      :found_at => "#{results["date"]} #{results["time"]}"
    )
  end
  
  def duplicate_of?(other_location)
    self.found_at == other_location.found_at
  end
  
  def same_as_last?
    Location.last ? self.duplicate_of?(Location.last) : false
  end
end
