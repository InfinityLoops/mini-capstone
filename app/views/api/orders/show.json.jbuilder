json.id @order.id
json.user do 
  json.id @order.user_id
  json.email @order.user.email
end

json.carted_products do
  json.array! @order.carted_products, partial: 'api/carted_products/carted_product', as: :carted_product
end

json.subtotal @order.subtotal
json.tax @order.tax
json.total @order.total

json.formatted do 
  json.subtotal number_to_currency(@order.subtotal)
  json.tax number_to_currency(@order.tax)
  json.total number_to_currency(@order.total)
end

json.purchased_on @order.purchased_on











