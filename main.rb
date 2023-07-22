# main.rb
require_relative 'my_list'

# Sample usage
list = MyList.new(1, 2, 3, 4)

puts(list.all? { |e| e < 5 }) # Should output: true
puts(list.all? { |e| e > 5 }) # Should output: false

puts(list.any? { |e| e == 2 }) # Should output: true
puts(list.any? { |e| e == 5 }) # Should output: false

filtered_list = list.filter(&:even?)
puts filtered_list.inspect # Should output: [2, 4]
