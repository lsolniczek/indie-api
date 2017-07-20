Types::GamekeyType = GraphQL::ObjectType.define do
  name 'Game key'

  field :key, !types.String
  field :game, Types::GameType do
    resolve -> (game_key, args, ctx) { game_key.game }
  end
  field :user, Types::UserType do
    resolve -> (game_key, args, ctx) { game_key.user }
  end
end
