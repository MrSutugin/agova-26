# == Schema Information
#
# Table name: gigs
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  category_id :bigint           not null
#  region_id   :bigint           not null
#
# Indexes
#
#  index_gigs_on_account_id   (account_id)
#  index_gigs_on_category_id  (category_id)
#  index_gigs_on_region_id    (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (category_id => categories.id)
#  fk_rails_...  (region_id => regions.id)
#
class Gig < ApplicationRecord
  belongs_to :category
  belongs_to :region
  belongs_to :account

  validates :name, presence: true
  validates :description, presence: true
end
