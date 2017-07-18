module Users
  class TokenGenerator < Linearly::Step::Static
    def self.inputs
      { user: User }
    end

    def self.outputs
      {
        email: String,
        token: String
      }
    end

    def call
      payload = { :e => user.email, :u => user.uuid, :v => user.version }
      secret = ENV["SECRET"]
      succeed({
          email: user.email,
          token: Token.encode(payload, secret)
        })
    end
  end
end
