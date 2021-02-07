module Types
  class ViewType < Types::BaseObject
    field :id, ID, null: false
    field :full_address, String, null: true
    field :latitude, String, null: true
    field :longitude, String, null: true
    field :user, Types::UserType, null: true
    field :tour, Types::TourType, null: true
    field :point, Types::PointType, null: true
  end
end