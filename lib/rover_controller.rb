require './lib/rover.rb'
require './lib/direction.rb'
require './lib/plateau.rb'


class RoverController

	attr_reader :file, :plateau, :rovers

	def initialize file
		@file = IO.readlines(file)
		@rovers = []
	end

	def parse_input
		@plateau = map_plateau(@file.shift.strip)
		until @file.empty?
			x, y, direction = @file.shift.strip.split
			instructions = @file.shift.strip
			create_rover(x, y, direction, instructions)
		end
	end

	def move_rovers
		@rovers.each  do |r| 
			r.parse_instructions
		end
	end 

	def output
		@rovers.each { |r| r.to_s}
	end 

private

	def map_plateau(line)
		width, height = line.split
		Plateau.new width, height
	end

	def create_rover(x, y, direction, instructions)
		@rovers << Rover.new(x, y, direction, instructions)
	end
end



