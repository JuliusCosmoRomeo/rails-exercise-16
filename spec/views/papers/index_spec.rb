require 'rails_helper'

RSpec.describe '/papers/index', :type => :view do
	it "should have title, venue and year of 'COMPUTING MACHINERY AND INTELLIGENCE'" do
		@papers = [create(:paper)]
		render :template => '/papers/index.html.erb'
		expect(rendered).to match /COMPUTING MACHINERY AND INTELLIGENCE/
		expect(rendered).to match /Mind 49: 433-460/
		expect(rendered).to match /1950/
	end
	
end
