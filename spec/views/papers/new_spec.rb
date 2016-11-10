require 'rails_helper'

RSpec.describe '/papers/new', :type => :feature do
	it "should have title, venue and year field" do
		visit '/papers/new'
		expect(page).to have_field("paper_title")
		expect(page).to have_field("paper_venue")
		expect(page).to have_field("paper_year")
	end
	it "should have a submit button" do
		visit '/papers/new'
		expect(page).to have_selector("input[type=submit]")
	end

end
