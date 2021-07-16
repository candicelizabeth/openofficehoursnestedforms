class Sushi < ApplicationRecord
  belongs_to :chef
  belongs_to :customer
  accepts_nested_attributes_for :customer, reject_if: proc { |attributes| attributes['name'].blank? }

  def chef_attributes=(chef_hash)
    byebug
    if !chef_hash[:name].blank?
      self.chef = Chef.find_or_create_by(chef_hash)
    end
  end

  def customer_attributes=(customer_hash)
    # byebug
    if !customer_hash[:name].blank?
      self.customer = Customer.find_or_create_by(customer_hash)
    end
  end
end
