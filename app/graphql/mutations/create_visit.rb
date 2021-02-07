module Mutations
  class CreateVisit < Mutations::BaseMutation
    field :visit, Types::VisitType, null: false
    field :errors, [String], null: false

    argument :point_id, ID, required: true

    def resolve(point_id:)
      visit = Visit.new(point_id: point_id)
      if visit.save
        {
            visit: visit,
            errors: []
        }
      else
        {
            visit: nil,
            errors: point.errors.full_messages
        }
      end
    end
  end
end