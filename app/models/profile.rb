# == Schema Information
#
# Table name: profiles
#
#  id         :bigint           not null, primary key
#  bio        :string
#  firstname  :string
#  lastname   :string
#  username   :string
#  website    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  account_id :bigint           not null
#
# Indexes
#
#  index_profiles_on_account_id  (account_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#
class Profile < ApplicationRecord
  belongs_to :account

  validates :firstname, presence: true
  validates :lastname, presence: true
end
