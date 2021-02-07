module Types
  class ViewAttributes < BaseInputObject
    argument :full_address, String, required: false
    argument :latitude, String, required: false
    argument :longitude, String, required: false
    argument :user_id, ID, required: false
    argument :tour_id, ID, required: false
    argument :point_id, ID, required: false
  end
end