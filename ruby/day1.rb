puts 'Exercise A:'
puts 'Hello, world.'
puts


puts 'Exercise B:'
puts 'Hello, Ruby.'.index('Ruby.')
puts


puts 'Exercise C:'
10.times do
    puts 'Szymon Koper'
end
puts


puts 'Exercise D:'
i = 1
while i <= 10
    puts "This is sentence number #{i.to_s}"
    i += 1
end
puts


puts 'Exercise E:'
random = rand(10)
while true
    puts 'Write a number from range from 0 to 9'
    input = gets.to_i
    if input == random
        break
    elsif input < random
        puts 'I picked higher number'
    elsif input > random
        puts 'I picked lesser number' 
    end
    puts 'Try again'
end
puts "Congratulations. It\'s #{random.to_s}"
puts

