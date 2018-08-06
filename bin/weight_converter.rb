require_relative '../lib/item'
require_relative '../lib/utils'

input_list = [['table', 'l', 30], ['chair','l', 15], ['ball', 'l', 5]]

items = []
input_list.each do |original|
  items << Item.new(original[0], original[1], original[2])
end

items.each do |item|
  item.convert_to('k')
  item.print_weight
end
puts 'ok'

utility = Utils.new

max_item = utility.find_max_item(items)
min_item = utility.find_min_item(items)

utility.print_max_and_min max_item, min_item