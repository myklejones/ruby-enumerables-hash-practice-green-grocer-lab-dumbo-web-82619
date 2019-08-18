require "pry"

def consolidate_cart(cart)
 hash={}
 cart.each_with_index do |item,index|
   item.each do |food,info|
     if hash [food]
       hash[food][:count]+=1 
     else
       hash [food]=info
       hash [food][:count]=1 
     end
    end
  end
  hash
end

def apply_coupons(cart, coupons)
  
  hash={}
  cart.each do |item, index|
   coupons.each do |coupon|
  #binding.pry 
   if coupon[:item]==item
   hash["#{item} W/COUPON"] = {count: coupon[:num], price: coupon[:cost]/coupon[:num],
  clearance: cart[coupon[:item]][:clearance]}
    end 
   end
  end
  hash
 end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
