Spree::User.class_eval do
  def self.find_from_facebook(opts)
    user = Spree::User.find_by_email(opts["email"])
    if user
      return user
    else
      return Spree::User.create(email: opts["email"], password: BCrypt::Password.create(rand 999999))
    end
  end
end