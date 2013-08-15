require 'spec_helper.rb'

describe Direction do
	subject {Direction.new('N')}	

	it 'requires a valid direction' do
		expect(subject.facing).to eq('N')
	end

	describe '#left' do
		it 'returns the element at current -1' do
			expect(subject.left).to eq('W')
		end
	end

	describe '#right' do
		it 'returns the element at current -1' do
			expect(subject.right).to eq('E')
		end
	end
end