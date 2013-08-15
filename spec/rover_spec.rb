require 'spec_helper.rb'

describe Rover do 
	subject {Rover.new(3, 3, 'E', 'MMRMMRMRRM')}
	describe '#initialize' do
		it { should respond_to(:x) }
		it { should respond_to(:y) }
		it { should respond_to(:direction) }
		it { should respond_to(:instructions) }
	end

	describe '#parse_instructions' do
		context 'with valid input' do
			it 'should move the rover to the end x position' do
				subject.parse_instructions
				expect(subject.x).to eq(5) 
			end

			it 'should move the rover to the end x position' do
				subject.parse_instructions
				expect(subject.y).to eq(1) 
			end

			it 'the rover should be facing the correct direction' do
				subject.parse_instructions
				expect(subject.direction.facing).to eq('E')
			end
		end
		context 'with invalid input' do
			let!(:rover) {Rover.new(3, 3, 'E', 'dfgdfgMMMMMMMRMRRM')}
			it 'raises an error' do
				expect{rover.parse_instructions}.to raise_error
			end
		end
	end

	describe '#off_the_grid' do
		let!(:rover) {Rover.new(3, 3, 'E', 'MMRMMMMMMMMMMMMMRMRRM')}
		it 'raises an error if the rover falls off the plateau' do
			expect{rover.parse_instructions}.to raise_error
		end
	end
end

