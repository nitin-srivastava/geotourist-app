module Types
  class QueryType < GraphQL::Schema::Object
    # /users
    field :users, [Types::UserType], null: true

    def users
      User.all
    end

    # /users/id
    field :user, Types::UserType, null: true do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end
  end
end
