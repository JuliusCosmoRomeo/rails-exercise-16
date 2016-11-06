require 'rails_helper'

RSpec.describe '/authors/new', type: :view  do
	describe "Has first name field"
		it "checks if the first name field exists" do
			@author = create(:author)
			render :template => '/authors/show.html.erb'
			expect(rendered).to have_text(@author.first_name)
		end
	
end
