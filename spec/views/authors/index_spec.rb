require 'rails_helper'
require 'capybara/rspec'
RSpec.describe '/authors/index', type: :view  do
	

	
	describe "Contains 'alan turing'"
		it "checks if site complete" do
			@authors = [create(:author)]
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_text("Alan Turing http://wikipedia.de/Alan_Turing")
			expect(rendered).to have_selector "th", text: "Name"
			expect(rendered).to have_selector "a", text: "Add author"
			expect(rendered).to have_selector "a", text: "Show"
		end
		
end
