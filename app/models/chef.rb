class Chef < ApplicationRecord
    has_many :sushis
    has_many :customers, through: :sushis
end
