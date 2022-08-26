# == Schema Information
#
# Table name: tariffs
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Tariff < ApplicationRecord
end
