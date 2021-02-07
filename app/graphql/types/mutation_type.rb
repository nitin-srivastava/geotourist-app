module Types
  class MutationType < Types::BaseObject
    field :createUser, mutation: Mutations::CreateUser
    field :updateUser, mutation: Mutations::UpdateUser
    field :createTour, mutation: Mutations::CreateTour
    field :updateTour, mutation: Mutations::UpdateTour
    field :createPoint, mutation: Mutations::CreatePoint
    field :createVisit, mutation: Mutations::CreateVisit
    field :createView, mutation: Mutations::CreateView
    field :updateView, mutation: Mutations::UpdateView
  end
end
