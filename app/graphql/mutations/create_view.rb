module Mutations
  class CreateView < Mutations::BaseMutation
    field :view, Types::ViewType, null: false
    field :errors, [String], null: false

    argument :attributes, Types::ViewAttributes, required: true

    def resolve(attributes:)
      view = View.new(attributes.to_h)
      if view.save
        {
            view: view,
            errors: []
        }
      else
        {
            view: nil,
            errors: view.errors.full_messages
        }
      end
    end
  end
end