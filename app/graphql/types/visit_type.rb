module Types
  class VisitType < Types::BaseObject
    field :id, ID, null: false
    field :point, Types::PointType, null: false
  end
end