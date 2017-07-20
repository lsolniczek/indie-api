Types::GameType = GraphQL::ObjectType.define do
  name 'Game type'

  field :id, !types.ID
  field :title, !types.String
  field :subtitle, types.String
  field :description, !types.String
  field :original_price, !types.Float
  field :sale_price, !types.Float
  field :sale_percentage, !types.Float
  field :release_date, !Types::Date
  field :time, !types.Int
  field :players, !types.Int
  field :platform, !types.Int
  field :os, !types.Int
  field :game_keys, types[Types::GamekeyType] do
    resolve -> (game, args, ctx) { game.game_keys }
  end
end
