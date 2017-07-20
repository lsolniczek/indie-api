module Resolvers
  class BuyGameKey < GraphQL::Function
    argument :gameId, !types.Int
    argument :userId, !types.Int
    argument :transactionId, !types.String

    type Types::GameType

    def call(obj, args, ctx)

    end
  end
end
