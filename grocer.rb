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
  coupons.each do |coupon|
  if cart.keys.include? coupon[:item]
    if cart[coupon[:item]][:count]>=coupon[:num]
      name = "#{coupon[:item]} W/COUPON" 
      if cart[name]
        cart[name][:count]+=coupon[:num]
      else
        cart[name] = {count: coupon[:num], price: coupon[:cost]/coupon[:num],
  clearance: cart[coupon[:item]][:clearance]}
end
cart[coupon[:item]][:count]-=coupon[:num]
    end 
   end
  end
  cart
 end

def apply_clearance(cart)
  cart.keys.each do |item|
if cart[item][:clearance]
  
  cart[item][:price] =(cart[item][:price])- (cart[item][:price]*0.20)
   end
  end
  cart
 end
 

def checkout(cart, coupons)
  consolidate=consolidate_cart
  coupons=apply_coupons
 clearance= apply_clearance
 total=0.0
 
end
