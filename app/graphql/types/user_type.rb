Types::UserType = GraphQL::ObjectType.define do
  name 'User of the application'

  field :id, !types.ID
  field :email, !types.String
  field :uuid, !types.String
end
