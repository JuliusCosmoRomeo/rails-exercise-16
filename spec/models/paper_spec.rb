require 'rails_helper'

RSpec.describe Paper, type: :model do

  #pending "add some examples to (or delete) #{__FILE__}"
  context "COMPUTING MACHINERY should be a valid paper"
	  it "should have valid title, venue and year" do
		  @paper = create(:paper)
		  expect(@paper.title).to eq('COMPUTING MACHINERY AND INTELLIGENCE')
		  expect(@paper.venue).to eq('Mind 49: 433-460')
		  expect(@paper.year).to eq(1950)
	  end
	  it "should not be valid without title" do
	  	expect(build(:paper, title: "")).to_not be_valid
	  end
	  it "should not be valid without venue" do
	  	expect(build(:paper, venue: "")).to_not be_valid
	  end
	  it "should not be valid without year" do
	  	expect(build(:paper, year: nil)).to_not be_valid
	  end
	  it "should not be valid with non-integer year" do
	  	expect(build(:paper, year: "nineteen-fifty")).to_not be_valid
	  end
	  it "should have an empty author list" do
	  	@paper = create(:paper)
	  	expect(@paper.authors).to eq Array.new()
	  end
	  
end
