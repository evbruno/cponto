require 'spec_helper'

# Specs in this file have access to a helper object that includes
# the PontosHelper. For example:
#
# describe PontosHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
describe PontosHelper do
	#pending "add some examples to (or delete) #{__FILE__}"
	#pending "add some examples to (or delete) #{__FILE__}"
	# it "should raise an error" do
	# 	"12:00".diff -1
	# end

	it 'should add minutes' do
		'12:00'.diff(1).should == '12:01'
		'12:00'.diff(2).should == '12:02'
		'12:01'.diff(1).should == '12:02'
		'12:02'.diff(2).should == '12:04'

		'11:59'.diff(1).should == '12:00'
		'11:59'.diff(2).should == '12:01'
		'11:59'.diff(2).should == '12:01'
	end

	it 'should subtract minutes' do
		'12:00'.diff(-1).should == '11:59'
		'12:00'.diff(-2).should == '11:58'
		'12:01'.diff(-1).should == '12:00'
		'12:02'.diff(-1).should == '12:01'
	end

	it 'should work with overloaded operator' do
		('11:59' >> 2).should == '12:01'
	end
	
end
