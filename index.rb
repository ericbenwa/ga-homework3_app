puts "\r"
puts "==========="
puts "Problem 1"
puts "==========="
puts "\r"

data = []
id = 0

100.times do
	data.push({ 
		user: {
			id: id,
			email: "user_#{id}@gmail.com",
			username: "user_#{id}",
			age: rand(18..75)
		},
		tweets: [
			"I'm user #{id}",
			"This is my second tweet!"
		]
	})
	id += 1
end

puts data

puts "\r"
puts "================"
puts "Problem 2"
puts "user_2's tweets"
puts "================"
puts "\r"

data[2][:tweets].each {|tweet| puts "tweet: " + tweet}

puts "\r"
puts "==========="
puts "Problem 3"
puts "==========="
puts "\r"

puts data.reverse!

puts "\r"
puts "==========="
puts "Problem 4"
puts "==========="
puts "\r"

user_found = data.find_index { |a| a[:user][:id] == 2 }

puts "user_2 is at index #{user_found} in the data array"

puts "\r"
puts "==========="
puts "Problem 5"
puts "==========="
puts "\r"

puts "SEARCH RESULTS"
puts "username        age"
puts "========        ==="

# data.select { |user| user[:user][:age] == 22 } .each { |id| puts id[:user][:id]} .each { |age| puts age[:user][:age]}
whitespace = "        "

data.select { |user| user[:user][:age] < 25 && user[:user][:age] > 18 } .each do |u|
	puts "user_#{u[:user][:id]} #{whitespace} #{u[:user][:age]}"
end

puts "\r"