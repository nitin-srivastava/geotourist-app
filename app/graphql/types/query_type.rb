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

    # /tours
    field :tours, [Types::TourType], null: true

    def tours
      Tour.all
    end

    # /tour
    field :tour, Types::TourType, null: true do
      argument :id, ID, required: true
    end

    def tour(id:)
      Tour.find(id)
    end

    # /points
    field :points, [Types::PointType], null: true

    def points
      Point.all
    end

    # /point
    field :point, Types::PointType, null: true do
      argument :id, ID, required: true
    end

    def point(id:)
      Point.find(id)
    end
  end
end
