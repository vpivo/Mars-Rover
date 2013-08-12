class RoverController

	attr_accessor :file, :plateau, :rovers

	def initialize file
		@file = IO.readlines file
		@rovers = []
		parse_input
	end

	def parse_input
		@plateau = map_plateau @file.shift.strip
		until @file.empty?
			x, y, direction = @file.shift.strip.split
			instructions = @file.shift.strip
			create_rover x, y, direction, instructions
		end
	end


	def map_plateau line
		width, height = line.split
		Plateau.new width, height
	end

	def create_rover x,y,direction, instructions
		@rovers << Rover.new(x,y,direction, instructions)
	end

	

end



