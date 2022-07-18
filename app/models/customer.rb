class Customer < ApplicationRecord
    has_many :bills
    belongs_to :electricity
    belongs_to :water
    belongs_to :suiga
    belongs_to :internet
    belongs_to :user
    validates :name, presence: true
    validates :email, presence: true,uniqueness: true
    validates :phone, presence:true,uniqueness: true
    validates :city, presence:true
end
