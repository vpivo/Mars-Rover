class Plateau

	attr_reader :width, :height

	def initialize(width, height)
		@width = width.to_i
		@height = height.to_i
	end
end