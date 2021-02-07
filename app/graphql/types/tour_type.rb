module Types
  class TourType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :user, Types::UserType, null: true
  end
end
