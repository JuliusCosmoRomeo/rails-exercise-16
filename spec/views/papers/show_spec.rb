require 'rails_helper'

RSpec.describe '/papers/show', :type => :view do
	it "should have title, venue and year" do
		@paper = create(:paper)
		render :template => '/papers/show.html.erb'
		expect(rendered).to match /Title: COMPUTING MACHINERY AND INTELLIGENCE/
		expect(rendered).to match /Venue: Mind 49: 433-460/
		expect(rendered).to match /Year: 1950/
	end
	it "should show the author's name" do
		@author = create(:author)
		@paper = create(:paper)
		@paper.authors.push(@author)
		render :template => '/papers/show.html.erb'
		expect(rendered).to match /Alan Turing/
	end
	
	
end
