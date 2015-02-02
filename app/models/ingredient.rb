class Ingredient < ActiveRecord::Base
   
   before_save :from_to_geocode
   
   def from_to_geocode
     from_adr = Geocoder.coordinates(from)
     to_adr = Geocoder.coordinates(to)
     self.from_latitude = from_adr.first
     self.from_longitude = from_adr.last
     self.to_latitude = to_adr.first
     self.to_longitude = to_adr.last
   end
end
