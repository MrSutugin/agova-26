# == Schema Information
#
# Table name: brands
#
#  id          :bigint           not null, primary key
#  address     :string
#  description :text
#  email       :string
#  geo_lat     :string
#  geo_lon     :string
#  inn         :string
#  name        :string
#  ogrn        :string
#  phone       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  account_id  :bigint           not null
#  region_id   :bigint           not null
#
# Indexes
#
#  index_brands_on_account_id  (account_id)
#  index_brands_on_region_id   (region_id)
#
# Foreign Keys
#
#  fk_rails_...  (account_id => accounts.id)
#  fk_rails_...  (region_id => regions.id)
#
class Brand < ApplicationRecord
  belongs_to :region
  belongs_to :account
  has_many :areas

  validates :name, presence: true
  validates :description, presence: true
  validates :address, presence: true
  validates :phone, presence: true
  validates :email, presence: true
  validates :inn, presence: true
  validates :ogrn, presence: true
end
