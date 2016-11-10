require 'rails_helper'


RSpec.describe Author, type: :model do
  describe "create author Alan Turing" 
  	it "checks if author is created" do
  		@author= create(:author)
  		expect(@author.first_name).to eq("Alan")
  		expect(@author.last_name).to eq("Turing")
  		expect(@author.homepage).to eq("http://wikipedia.de/Alan_Turing") #really dont know why not wikipedia.org
  	end
  describe "full name as first name + last name" 
  	it "checks if name method returns full name" do
  		@author= create(:author)
  		expect(@author.name).to eq("Alan Turing")
  	end
  describe "Validation test"
    it "should require a last name" do
      #expect(create(:author, last_name: nil)).to_not be_valid
      expect(Author.create(last_name: nil)).to_not be_valid
      #expect(build(:author, last_name: nil)).to_not be_valid
    end
  #pending "add some examples to (or delete) #{__FILE__}"

end

