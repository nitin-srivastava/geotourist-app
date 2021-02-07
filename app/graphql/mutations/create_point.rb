module Mutations
  class CreatePoint < Mutations::BaseMutation
    field :point, Types::PointType, null: false
    field :errors, [String], null: false

    argument :attributes, Types::PointAttributes, required: true

    def resolve(attributes:)
      point = Point.new(attributes.to_h)
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