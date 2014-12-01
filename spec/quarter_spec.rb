require 'quarter'

describe Quarter do

	let(:quarter) { Quarter.new(data) }
	let(:data) 	 { [{"AGILENT TECHNOLOGIES INC" => 455, "ALCOA INC" => 322, "AARONS INC" => 322}] }

	context 'when initialized' do

		it 'should have common stock positions' do
			expect(quarter.common_stock_positions).to eq [{"AGILENT TECHNOLOGIES INC" => 455, "ALCOA INC" => 322, "AARONS INC" => 322}]
		end

	end

end
