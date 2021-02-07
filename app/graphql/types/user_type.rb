module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :email, String, null: true
    field :tours, [TourType], null: true
    field :views, [ViewType], null: true
  end
end