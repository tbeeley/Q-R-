require 'Convert'

describe Convert do

	let(:march_data) { Convert.new('march_small.txt')}

	context 'when initialized' do

		it 'should take in a text file' do
			(march_data.contents).should include('APPLE INC')
		end

		it 'should convert it to a string' do
			expect(march_data.contents).to be_an_instance_of String
		end

	end

end
