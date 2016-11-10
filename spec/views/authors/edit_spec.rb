require 'rails_helper'

RSpec.describe '/authors/edit', :type => :view do
	
	describe "Author edit"
		it "should have author information fields " do
			@author = create(:author)
			render :template => '/authors/edit.html.erb'
			expect(rendered).to have_field("author_first_name")
			expect(rendered).to have_field("author_last_name")
			expect(rendered).to have_field("author_homepage")
			
	end
	
	
end
