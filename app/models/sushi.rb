class Sushi < ApplicationRecord
  belongs_to :chef
  belongs_to :customer
end
