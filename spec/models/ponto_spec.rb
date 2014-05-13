require 'spec_helper'

describe Ponto do

	it 'should return 30 days for april 2014' do
		dias = Ponto.build(Ponto.new(ano: 2014, mes: 4))
		dias.size.should == 30
		dias[0].dia.mday.should == 1
		dias[1].dia.mday.should == 2
		dias[29].dia.mday.should == 30
	end

	it 'should calculate edge cases' do
		Ponto.build(Ponto.new(ano: 2014, mes: 1)).size.should == 31
		Ponto.build(Ponto.new(ano: 2014, mes: 12)).size.should == 31
		Ponto.build(Ponto.new(ano: 2014, mes: 2)).size.should == 28
		Ponto.build(Ponto.new(ano: 2000, mes: 2)).size.should == 29
	end


end
