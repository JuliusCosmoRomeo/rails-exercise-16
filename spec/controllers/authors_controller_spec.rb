require 'rails_helper'

RSpec.describe AuthorsController, type: :controller do

	describe "Get new authors page"
		it "renders the 'new authors' page" do
			get :new
			expect(response).to render_template("new")
		end
	describe "Show author page"
		it "renders the authors page" do
			create(:author)
			get :show, id: 1
			expect(response).to render_template("show")
		end
	describe "Get authors index page"
		it "renders the authors index page" do
			get :index
			expect(response).to render_template("index")
		end
	describe "Authors edit page"
		it "should render" do
			get :edit, id: 1
			expect(response).to render_template("edit")
		end
	
	
end
