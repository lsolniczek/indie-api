Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  field :user, Types::UserType do
    argument :uuid, !types.String
    resolve -> (obj, args, ctx) { User.find(uuid: args[:uuid]) }
  end

  field :users, !types[Types::UserType] do
    resolve -> (obj, args, ctx) { User.all }
  end

  field :games, !types[Types::GameType] do
    resolve -> (obj, args, ctx) { Game.all }
  end
end
