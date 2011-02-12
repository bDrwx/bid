class User < ActiveRecord::Base
  acts_as_authentic
  has_many :bids

  ROLES = %w[admin native guest]
  
  def role_symbols
      [role.to_sym]
  end
  def role?(role)
    role.to_s == self.role
  end
end
