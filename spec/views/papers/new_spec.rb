require 'rails_helper'

RSpec.describe '/papers/new', :type => :feature do
	it "should have title, venue and year field" do
		visit '/papers/new'
		expect(page).to have_field("title")
		expect(page).to have_field("venue")
		expect(page).to have_field("year")
	end
	
end
