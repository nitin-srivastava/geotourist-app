module Mutations
  class UpdateUser < Mutations::BaseMutation
    argument :id, ID, required: true
    argument :attributes, Types::UserAttributes, required: true
    # argument :name, String, required: false
    # argument :email, String, required: false

    field :user, Types::UserType, null: false
    field :errors, [String], null: false

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