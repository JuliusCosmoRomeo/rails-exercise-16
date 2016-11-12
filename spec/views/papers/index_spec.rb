require 'rails_helper'

RSpec.describe '/papers/index', :type => :view do
	it "should have title, venue and year of 'COMPUTING MACHINERY AND INTELLIGENCE'" do
		@papers = [create(:paper)]
		render :template => '/papers/index.html.erb'
		expect(rendered).to match /COMPUTING MACHINERY AND INTELLIGENCE/
		expect(rendered).to match /Mind 49: 433-460/
		expect(rendered).to match /1950/
		expect(rendered).to have_selector("a",:text => "Add paper")
		expect(rendered).to have_selector "a", text: "Show"
		expect(rendered).to have_selector "a", text: "Edit"
		expect(rendered).to have_selector "a", text: "Destroy"
		expect(rendered).to have_selector "th", text: "Title"
		expect(rendered).to have_selector "th", text: "Venue"
		expect(rendered).to have_selector "th", text: "Year"
	end
	
end
