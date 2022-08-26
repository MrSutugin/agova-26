# == Schema Information
#
# Table name: regions
#
#  id               :bigint           not null, primary key
#  federal_district :string
#  geo_lat          :string
#  geo_lon          :string
#  geoname_code     :string
#  geoname_name     :string
#  iso_code         :string
#  name             :string
#  name_with_type   :string
#  okato            :string
#  oktmo            :string
#  postal_code      :string
#  r_type           :string
#  tax_office       :string
#  timezone         :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  fias_id          :string
#  geoname_id       :string
#  kladr_id         :string
#
class Region < ApplicationRecord
  has_many :gigs
end
