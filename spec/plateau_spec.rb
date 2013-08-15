require 'spec_helper.rb'

describe Plateau do 
	subject {Plateau.new(7,5)}

	describe '#new' do
		it 'has a width' do
			expect(subject.width).to eq(7)
		end

		it 'has a width' do
			expect(subject.height).to eq(5)
		end
	end
end