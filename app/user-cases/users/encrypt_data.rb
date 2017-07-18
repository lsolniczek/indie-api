module Users
  class EncryptData < Linearly::Step::Static
    def self.inputs
      {
        email: String,
        password: String
      }
    end

    def self.outputs
      {
        email: String,
        password: String,
        uuid: String
      }
    end

    def call
      salt = Encryption.generate_salt
      succeed({
        email: email,
        password: PasswordManager.compose_password(Encryption.hash_data_with_salt(password, salt), salt),
        uuid: Encryption.uuid
      })
    end
  end
end
