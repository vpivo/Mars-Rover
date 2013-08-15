class Direction

	attr_reader :facing

	DIRECTION = ['N', 'E', 'S', 'W']

	def initialize(direction)
		@facing = direction.upcase
	end

	def right
		@facing = DIRECTION.fetch((current_index + 1 ) % DIRECTION.length )
	end

	def left 
		@facing = DIRECTION.fetch((DIRECTION.length + current_index - 1) %  DIRECTION.length )
	end 
	
private
	def current_index
		 DIRECTION.index(@facing)
	end
end

#Intially I decided to add classes for each direction, I couldn't find a way that 
#didn't seem hacky to send the rover for move. 

# class N < Direction
# 	def left 
# 		W.new
# 	end

# 	def right
# 		E.new
# 	end
# end

# class E < Direction

# 	def left 
# 		N.new
# 	end

# 	def right
# 		S.new
# 	end
# end

# class S < Direction
	
# 	def left 
# 		E.new
# 	end

# 	def right
# 		W.new
# 	end
# end

# class W < Direction

# 	def left 
# 		S.new
# 	end

# 	def right
# 		N.new
# 	end
# end
