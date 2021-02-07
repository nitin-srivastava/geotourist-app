module Mutations
  class UpdateUser < Mutations::BaseMutation
    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    argument :id, ID, required: true
    argument :attributes, Types::UserAttributes, required: true

    def resolve(id:, attributes:)
      user = User.find(id)
      if user.update(attributes.to_h)
        {
            user: user,
            errors: []
        }
      else
        {
            user: nil,
            errors: user.errors.full_messages
        }
      end
    end
  end
end