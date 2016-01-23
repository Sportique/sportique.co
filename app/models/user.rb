class User < ActiveRecord::Base
  enum gender: [ :male, :female ]
  validates :email, presence: true
end
