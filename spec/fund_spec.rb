require 'Fund'

describe Fund do

	let(:fund) { Fund.new }

	context 'when initialized' do

		it 'should have quarters' do
			expect(fund.quarters).to be_an_instance_of Array
		end

	end

end
