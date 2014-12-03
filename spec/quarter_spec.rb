require 'quarter'

describe Quarter do

	let(:quarter1) { Quarter.new(data1) }
	let(:data1) 	  { {:AGILENT_TECHNOLOGIES_INC => 455, :ALCOA_INC => 322, :AARONS_INC => 636} }
	let(:quarter2) { Quarter.new(data2) }
	let(:data2) 	  { {:AGILENT_TECHNOLOGIES_INC => 1104, :ASSET_ACCEP_CAP_CORP => 86, :APPLE_INC => 1215} }

	context 'when initialized' do

		it 'should have common stock positions' do
			expect(quarter1.common_stock_positions).to be_an_instance_of Hash
		end

	end

	context 'Quarter should know' do

		it 'the total value of CSM_positions' do
			expect(quarter1.total_value).to eq 1413
		end

		it 'its five largest holdings' do
			expect(quarter1.biggest_positions(1)). to eq [[:AARONS_INC, 636]]
		end

		it 'how to make a comparison' do
			expect(quarter2.comparison(quarter2)).to eq 'loss'
		end

		it 'its new stocks' do
			expect(quarter2.new_stocks(quarter1)).to eq ({:ASSET_ACCEP_CAP_CORP => 86, :APPLE_INC => 1215})
		end

	end

end
