require 'rails_helper'

RSpec.describe '/authors/new', :type => :feature do
	describe "Has first name field"
		it "checks if the first name field exists" do
			visit '/authors/new'
			expect(page).to have_text("First name")
		end
	describe "Has last name field"
		it "checks if the last name field exists" do
			visit '/authors/new'
			expect(page).to have_text("Last name")
		end
	describe "Has field for homepage"
		it "checks if the homepage field exists" do
			visit '/authors/new'
			expect(page).to have_text("Homepage")
		end
	describe "Has field for homepage"
		it "checks if a submit button exists" do
			visit '/authors/new'
			expect(page).to have_button("Create Author")
		end
	
end
