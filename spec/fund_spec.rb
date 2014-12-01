require 'Fund'

describe Fund do

	let(:fund) { Fund.new(quarter1, quarter2, quarter3, quarter4) }
	let(:quarter1) { Quarter.new(data1) }
	let(:data1) 	  { {:AGILENT_TECHNOLOGIES_INC => 455, :ALCOA_INC => 322, :AARONS_INC => 636} }
	let(:quarter2) { Quarter.new(data2) }
	let(:data2) 	  { {:AGILENT_TECHNOLOGIES_INC => 1104, :ASSET_ACCEP_CAP_CORP => 86, :APPLE_INC => 1215} }
	let(:quarter3) { Quarter.new(data3) }
	let(:data3) 	  { {:ASSET_ACCEP_CAP_CORP => 220, :APPLE_INC => 758, :ALLIANCEBERNSTEIN_HOLDING_L => 196} }
	let(:quarter4) { Quarter.new(data4) }
	let(:data4) 	  { {:AGILENT_TECHNOLOGIES_INC => 557, :ASSET_ACCEP_CAP_CORP => 151, :APPLE_INC => 1252} }

	context 'when initialized' do

		it 'should have four quarters' do
			expect(fund.quarters.count).to eq 4
		end

	end

	context 'should know' do

		it 'its common stock positions for each quarter' do
			expect(fund.show_performance).to eq [1413, 2405, 1174, 1960]
		end

		it 'whether it grew or fell each quarter' do
			expect(fund.compare_quarters).to eq "2nd Quarter loss, 3rd Quarter growth, 4th Quarter loss"
		end

		#Keep for the moment. But maybe remove
		it 'its new stocks each quarter' do
			# expect(fund.new_positions(quarter1, quarter2)).to eq {:ASSET_ACCEP_CAP_CORP=>86, :APPLE_INC=>1215}
			expect(quarter2.new_stocks(quarter1)).to be_an_instance_of Hash
		end

	end

end
