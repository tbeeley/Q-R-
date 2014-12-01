require 'quarter'

describe Quarter do

	let(:quarter) { Quarter.new(data) }
	let(:data) 	  { {:AGILENT_TECHNOLOGIES_INC => 455, :ALCOA_INC => 322, :AARONS_INC => 636} }

	context 'when initialized' do

		it 'should have common stock positions' do
			expect(quarter.common_stock_positions).to be_an_instance_of Hash
		end

	end

	context 'Quarter should know' do

		it 'the total value of CSM_positions' do
			expect(quarter.total_value).to eq 1413
		end

	end

end
