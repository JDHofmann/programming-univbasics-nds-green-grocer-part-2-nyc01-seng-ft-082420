require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # REMEMBER: This method **should** update cart
  #returns:
#   [
#   {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 1},
#   {:item => "KALE", :price => 3.00, :clearance => false, :count => 1},
#   {:item => "AVOCADO W/COUPON", :price => 2.50, :clearance => true, :count => 2}
# ]
coupons.each do | coupon_i |
  # find coupon item in cart
  discounted_item = find_item_by_name_in_collection(coupon_i[:item], cart)
end

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
