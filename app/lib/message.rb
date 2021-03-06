class Message
  def self.not_found(record = 'record')
    "Sorry, #{record} not found."
  end

  def self.invalid_credentials
    "Invalid credentials."
  end

  def self.invalid_token
    "Invalid Token."
  end

  def self.missing_token
    "Missing token."
  end

  def self.unauthorized
    "Unauthorized request."
  end

  def self.account_created
    "Account successfully created."
  end

  def self.account_not_created
    "Account could not be created."
  end

  def self.expired_token
    "Sorry, token expired. Please login to continue."
  end
end