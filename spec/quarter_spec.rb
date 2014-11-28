require 'quarter'

describe Quarter do

	it 'should initialize with positions' do
		quarter = Quarter.new
		expect(quarter.positions).to be_an_instance_of Hash
	end

end
