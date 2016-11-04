require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
	describe "Get new authors"
		it "renders the authors page" do
			get :new
			expect(response).to render_template("new")
		end
end
