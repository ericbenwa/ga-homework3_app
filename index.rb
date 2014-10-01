puts "==========="
puts "Problem 1"
puts "==========="
puts "\r"

data = []
id = 0

# 100.times do |user_id|
# 	data = {
# 		id: user_id,
# 		email: "user_#{user_id}@gmail.com",
# 		username: "user_#{user_id}",
# 		age: 22
# 	}
# 	puts data
# 	user_id += 1
# 	data[:age] = 33
# end


100.times do
	data.push({
		user: {
			id: id += 1,
			email: "user_#{id}@gmail.com",
			username: "user_#{id}",
			age: rand(18..75)
		},
		tweets: [
			"I'm user #{id}",
			"This is my second tweet!"
		]
	})
end

puts data

puts "\r"
puts "================"
puts "Problem 2"
puts "user_2's tweets"
puts "================"
puts "\r"

data[1][:tweets].each {|tweet| puts "tweet: " + tweet}
puts "\r"

puts "==========="
puts "Problem 3"
puts "==========="
puts "\r"

puts data.reverse

puts "==========="
puts "Problem 4"
puts "==========="
puts "\r"

# puts "user_2 is at #{index} in the data array"