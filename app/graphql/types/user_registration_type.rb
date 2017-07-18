Types::UserRegistrationType = GraphQL::ObjectType.define do
  name 'User registration type'

  field :email, types.String, hash_key: :email
  field :token, types.String, hash_key: :token
end
