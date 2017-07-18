module Users
  class SaveUser < Linearly::Step::Static
    def self.inputs
      {
        email: String,
        password: String,
        uuid: String
      }
    end

    def self.outputs
      { user: User }
    end

    def call
      succeed({ user: User.create(email: email, password: password, uuid: uuid) })
    end
  end
end
