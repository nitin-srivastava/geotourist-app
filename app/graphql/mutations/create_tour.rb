module Mutations
  class CreateTour < BaseMutation
    field :tour, Types::TourType, null: false
    field :errors, [String], null: false

    argument :attributes, Types::TourAttributes, required: true

    def resolve(attributes:)
      tour = Tour.new(attributes.to_h)
      if tour.save
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
