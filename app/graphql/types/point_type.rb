module Types
  class PointType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :description, String, null: true
    field :full_address, String, null: true
    field :latitude, String, null: true
    field :longitude, String, null: true
    field :tour, Types::TourType, null: true
    field :visits, [Types::VisitType], null: true
    field :views, [Types::ViewType], null: true
  end
end