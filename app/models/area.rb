# == Schema Information
#
# Table name: areas
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  number      :string
#  square      :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  brand_id    :bigint           not null
#
# Indexes
#
#  index_areas_on_account_id  (account_id)
#  index_areas_on_brand_id    (brand_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (brand_id => brands.id)
#
class Area < ApplicationRecord
  belongs_to :brand
  belongs_to :account
end
