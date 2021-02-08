module Mutations
  class UpdateView < Mutations::BaseMutation
    field :view, Types::ViewType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :attributes, Types::ViewAttributes, required: true

    def resolve(id:, attributes:)
      view = View.find(id)
      if view.update(attributes.to_h)
        view.update_analytics
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