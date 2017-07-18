module Users
  class FindUser < Linearly::Step::Static
    def self.inputs
      {
        email: String,
        password: String
      }
    end

    def self.outputs
      { user: User }
    end

    def call
      user = User.find_by(email: email)
      if user
        succeed({ user: user })
      else
        fail('There is no user with that email')
      end
    end
  end
end
