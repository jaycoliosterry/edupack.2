class AccountAddress < ActiveRecord::Base
  belongs_to :account
  validates_formatting_of :email, using: :email
end
