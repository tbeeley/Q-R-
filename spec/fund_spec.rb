require 'Fund'

describe Fund do

	let(:fund) { Fund.new }

	context 'when initialized' do

		it 'should have four quarters' do
			expect(fund.quarters).to be_an_instance_of Array
		end

	end

	context 'can' do

		let(:quarter) { double :quarter}

		it 'add a quarter' do
			fund.add(quarter)
			expect(fund.quarters.count).to eq 1
		end

		it 'can only add four quarters' do
			5.times { fund.add(quarter) }
			expect(fund.quarters.count).to eq 4
		end

	end

end
