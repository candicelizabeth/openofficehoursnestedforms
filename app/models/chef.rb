class Chef < ApplicationRecord
    has_many :sushis
    has_many :customers, through: :sushis
    accepts_nested_attributes_for :sushis, :customers
end
