require 'rails_helper'

RSpec.describe '/authors/edit', :type => :view do
	before(:each) do
		@author = create(:author)
	end
	describe "Author edit"
		it "should have author information fields " do
			render :template => '/authors/edit.html.erb'
			expect(rendered).to have_field("author_first_name")
			expect(rendered).to have_field("author_last_name")
			expect(rendered).to have_field("author_homepage")
			
	end
	
	
end
