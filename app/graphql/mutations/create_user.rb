module Mutations
  class CreateUser < Mutations::BaseMutation
    field :user, Types::UserType, null: false
    field :errors, [String], null: false

    argument :name, String, required: true
    argument :email, String, required: true

    def resolve(name:, email:)
      user = User.new(name: name, email: email)
      if user.save
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