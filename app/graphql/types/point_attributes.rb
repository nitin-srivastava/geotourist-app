module Types
  class PointAttributes < BaseInputObject
    argument :name, String, required: false
    argument :description, String, required: false
    argument :full_address, String, required: false
    argument :latitude, String, required: false
    argument :longitude, String, required: false
    argument :tour_id, ID, required: false
  end
end