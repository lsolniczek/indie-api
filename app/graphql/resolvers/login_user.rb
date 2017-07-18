module Resolvers
  class LoginUser < GraphQL::Function
    argument :email, !types.String
    argument :password, !types.String

    type Types::UserRegistrationType

    def call(obj, args, ctx)
      flow = Linearly::Flow.new(
        Users::FindUser,
        Users::ValidatePassword,
        Users::TokenGenerator,
      )
      result = flow.call(
        Statefully::State.create(
          {
            email: args[:email],
            password: args[:password],
          }
        )
      )

      if result.successful?
        {
          email: result.email,
          token: result.token,
        }
      else
        GraphQL::ExecutionError.new(result.error)
      end
    end
  end
end
