class Customer < ApplicationRecord
    has_many :sushis
    has_many :chefs, through: :sushis
end
