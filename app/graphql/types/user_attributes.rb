module Types
  class UserAttributes < BaseInputObject
    argument :name, String, required: false
    argument :email, String, required: false
  end
end