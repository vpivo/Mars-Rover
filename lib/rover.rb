class Rover

	attr_accessor :x, :y, :direction, :instructions
	def initialize x,y,direction, instructions
		@x = x.to_i
		@y = y.to_i
		@direction = direction
		@instructions = instructions
	end
end