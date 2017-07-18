class PasswordManager
  SEPARATOR = '.'
  private_constant :SEPARATOR

  def self.compose_password(password, salt)
    password + SEPARATOR + salt
  end

  def self.decompose_password(password)
    password_parts = password.split(SEPARATOR)
    password_parts.count == 2 ? password_parts : nil
  end
end
