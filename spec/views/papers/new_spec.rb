require 'rails_helper'

RSpec.describe '/papers/new', :type => :view do
	it "should have title, venue and year field" do
		render :template => '/papers/new.html.erb'
		expect(rendered).to have_field("paper_title")
		expect(rendered).to have_field("paper_venue")
		expect(rendered).to have_field("paper_year")
	end
	it "should have a submit button" do
		render :template => '/papers/new.html.erb'
		expect(rendered).to have_selector("input[type=submit]")
	end
	
end
