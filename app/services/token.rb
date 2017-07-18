class Token
  def self.encode(payload, secret, exp = 3.days.from_now)
    payload[:exp] = exp.to_i
    JWT.encode payload, secret, 'HS256'
  end

  def self.decode(token, secret)
    begin
      body = JWT.decode token, secret, true, { :algorithm => 'HS256' }
      body[0].with_indifferent_access
    rescue
      nil
    end
  end
end
