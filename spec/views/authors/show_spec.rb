require 'rails_helper'

RSpec.describe '/authors/new', type: :view  do
	before(:context) do
		@author = create(:author)
	end
	describe "Has first name field"
		it "checks if the first name field exists" do
			render :template => '/authors/show.html.erb'
			expect(rendered).to have_text(@author.first_name)
		end
		it "checks if the last name field exists" do
			render :template => '/authors/show.html.erb'
			expect(rendered).to have_text(@author.last_name)
		end
		it "checks if the homepage field exists" do
			render :template => '/authors/show.html.erb'
			expect(rendered).to have_text(@author.homepage)
		end
end
