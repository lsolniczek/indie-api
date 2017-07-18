module Users
  class ValidatePassword < Linearly::Step::Static
    def self.inputs
      {
        user: User,
        password: String
      }
    end

    def self.outputs
      { user: User }
    end

    def call
      hash_password, salt = PasswordManager.decompose_password(user.password)
      if Encryption.hash_data_with_salt(password, salt) == hash_password
        succeed({ user: user })
      else
        fail('Password doesn\'t match')
      end
    end
  end
end
