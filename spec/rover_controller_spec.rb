require 'spec_helper.rb'

describe RoverController do

	subject {RoverController.new('input.txt')}

	describe '#intialize' do
		it 'has an instruction file' do
			expect(subject.file).to be_instance_of(Array)
		end

		it 'has a plateau' do
			expect(subject.plateau).to be_instance_of(Plateau)
		end

		it 'returns the plateau height' do	
			expect(subject.plateau.height).to eq(5)
		end

		it 'returns the plateau width' do	
			expect(subject.plateau.height).to eq(5)
		end

		it 'created rovers' do
			expect(subject.rovers.first).to be_instance_of(Rover)
		end

		it 'created the correct numner of rovers' do
			expect(subject.rovers.length).to eq(2)
		end

		it 'created rovers with the correct attributes' do
			expect(subject.rovers.first.x).to eq(1)
		end
	end

	describe '#move_rovers' do
		it 'move the rovers to correct position' do

		end
	end
end