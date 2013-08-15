require './lib/rover_controller.rb'

puts "Enter a file name. You can also enter input.txt"
file = gets.chomp.strip
controller = RoverController.new(file)

puts "Moving the Rovers"
controller.parse_input
controller.move_rovers
puts controller.output

