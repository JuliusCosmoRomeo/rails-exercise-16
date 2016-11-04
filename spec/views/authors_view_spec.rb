require 'rails_helper'

RSpec.describe '/authors/new', type: :view do
	describe "Has first name field"
		it "checks if the first name field exists" do
			visit '/authors/new'
			expect(page).to have_text("First name")
		end
end
