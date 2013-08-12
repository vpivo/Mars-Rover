require 'spec_helper.rb'

describe RoverController do

	subject {RoverController.new('input.txt')}

	describe '#intialize' do
		it 'has a file' do
			expect(subject.file).to eq('input.txt')
		end


	end

end