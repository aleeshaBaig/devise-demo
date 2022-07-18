class Bill < ApplicationRecord
  has_one :electricity
  has_one :suiga
  has_one :internet
  has_one :water
  belongs_to :customer
end
