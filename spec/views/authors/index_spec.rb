require 'rails_helper'
require 'capybara/rspec'
RSpec.describe '/authors/index', type: :view  do
	before(:context) do
		@author = create(:author)
		@authors = Author.all
	end
	describe "Contains 'alan turing'"
		it "checks if 'alan turing' exists" do
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_text("Alan Turing http://wikipedia.de/Alan_Turing")
		end
	describe "first and last name in one column"
		it "checks if a css tag 'th' with text 'name' exists" do
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_css("th", text: "Name")

		end
	describe "link to 'new author'-page"
		it "checks if a css tag 'a' with text 'add author' exists" do
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_css("a", text: "Add author")

		end
	describe "link to 'show author'-page"
		it "checks if a css tag 'a' with text 'add author' exists" do
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_css("a", text: "Show")

		end
		
end
