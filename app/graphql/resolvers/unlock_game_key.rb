module Resolvers
  class UnlockGameKey < GraphQL::Function
    argument :gameId, !types.Int
    argument :userId, !types.Int

    type Types::GameType

    def call(obj, args, ctx)

    end
  end
end