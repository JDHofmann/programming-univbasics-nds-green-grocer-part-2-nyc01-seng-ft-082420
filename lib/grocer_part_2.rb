require_relative './part_1_solution.rb'
require 'pry'

def find_item_index_in_collection(name, collection)
  index = 0

  collection.each do |grocery_item|
    return index if grocery_item[:item] === name
    index += 1
  end

  nil
end

def apply_coupons(cart, coupons)
  coupons.each do | coupon_i |
    discounted_item = find_item_by_name_in_collection(coupon_i[:item], cart)
    discounted_item_cost = coupon_i[:cost]/coupon_i[:num]
    new_item = {
      :item => "#{discounted_item[:item]} W/COUPON",
      :price => discounted_item_cost,
      :clearance => discounted_item[:clearance],
      :count => coupon_i[:num]
    }
    cart << new_item
    cart_index_number = find_item_index_in_collection(coupon_i[:item], cart)
    cart[cart_index_number][:count]-= new_item[:count]
  end
  cart.delete_if { |cart_item| cart_item[:count]<= 0}
  # cart.each do |cart_item|
  #   cart.delete_if { }
  #   if cart_item[:count]<= 0
  #     #remove item from array
  #     # cart.delete_at(cart_item)
  #     binding.pry
  #   end
  # end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
