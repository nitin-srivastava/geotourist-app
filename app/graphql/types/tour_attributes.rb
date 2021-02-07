module Types
  class TourAttributes < BaseInputObject
    argument :name, String, required: false
    argument :description, String, required: false
    argument :user_id, ID, required: false
  end
end