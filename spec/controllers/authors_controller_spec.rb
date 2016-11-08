require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do
	before :context do
		create(:author)
	end

	describe "Get new authors page"
		it "renders the 'new authors' page" do
			get :new
			expect(response).to render_template("new")
		end
	describe "Show author page"
		it "renders the authors page" do
			get :show, id: 1
			expect(response).to render_template("show")
		end
	describe "Get authors index page"
		it "renders the authors index page" do
			get :index
			expect(response).to render_template("index")
		end
	
end
