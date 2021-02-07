module Mutations
  class UpdateTour < BaseMutation
    field :tour, Types::TourType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :attributes, Types::TourAttributes, required: true

    def resolve(id:, attributes:)
      tour = Tour.find(id)
      if tour.update!(attributes.to_h)
        {
          tour: tour,
          errors: []
        }
      else
        {
          tour: nil,
          errors: tour.errors.full_messages
        }
      end
    end
  end
end
