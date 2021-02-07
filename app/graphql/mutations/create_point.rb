module Mutations
  class CreatePoint < Mutations::BaseMutation
    field :point, Types::PointType, null: false
    field :errors, [String], null: false

    argument :tour_id, ID, required: true

    def resolve(tour_id:)
      point = Point.new(tour_id: tour_id)
      if point.save
        {
            point: point,
            errors: []
        }
      else
        {
            point: nil,
            errors: point.errors.full_messages
        }
      end
    end
  end
end