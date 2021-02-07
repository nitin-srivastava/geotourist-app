module Types
  class PointType < Types::BaseObject
    field :id, ID, null: false
    field :tour, Types::TourType, null: false
    field :visits, [Types::VisitType], null: false
  end
end