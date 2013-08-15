class Rover

	attr_reader :x, :y, :direction, :instructions

	def initialize x, y, direction, instructions
		@x = x.to_i
		@y = y.to_i
		@instructions = instructions.split(//)
		@direction = Direction.new(direction)
	end


	def parse_instructions
		@instructions.each do |i|
			case i 
			when 'L'
				turn_left
			when 'R'
				turn_right
			when'M'
				move
				off_the_grid?
			else 
				raise "Invalid input"
			end
		end
	end

	def to_s 
		"#{self.x} #{self.y} #{self.direction.facing}"
	end

	protected
	def move 
		case @direction.facing
		when 'N'
			self.north
		when 'E'
			self.east
		when 'S'
			south
		when 'W'
			west
		end
	end

	def north
		@y += 1 
	end

	def east
		@x += 1
	end

	def south
		@y -= 1
	end

	def west
		@x -= 1
	end

	private

	def off_the_grid?
		raise "The Rover Fell Off the Plateau!" if @y < -1 || @x < -1 
	end

	def turn_left
		@direction.left   
	end

	def turn_right
		@direction.right   
	end

end