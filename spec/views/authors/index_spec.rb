require 'rails_helper'

RSpec.describe '/authors/index', type: :view  do
	before(:context) do
		@author = create(:author)
		@authors = Author.all
	end
	describe "Contains 'alan turing'"
		it "checks if 'alan turing' exists" do
			render :template => '/authors/index.html.erb'
			expect(rendered).to have_text("Alan Turing homepage: http://wikipedia.de/alan_turing")
		end
		
end
