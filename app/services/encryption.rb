class Encryption
  def self.generate_salt(n=100)
    hash(SecureRandom.base64(n))
  end

  def self.uuid
    SecureRandom.uuid
  end

  def self.hash_data_with_salt(data, salt)
    hash(salt + data)
  end

  private

  def self.hash(data)
    Base64.urlsafe_encode64(OpenSSL::Digest::SHA256.new(data).digest, padding: false)
  end
end
