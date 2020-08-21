require_relative './part_1_solution.rb'
require 'pry'
def apply_coupons(cart, coupons)
  coupons.each do | coupon_i |
    # find coupon item in cart
    discounted_item = find_item_by_name_in_collection(coupon_i[:item], cart)
    discounted_item_cost = coupon_i[:cost]/coupon_i[:num]

    new_item = {
      :item => "#{discounted_item[:item]} W/COUPON",
      :price => discounted_item_cost,
      :clearance => discounted_item[:clearance],
      :count => coupon_i[:num]
    }
    cart << new_item
    # subtract new_item[:count] from cart[item][:price]
    
    binding.pry
  end
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
