require 'rails_helper'

RSpec.describe PapersController, type: :controller do

	it "should render 'new paper' page " do
		get :new
		expect(response).to render_template("new")
	end
	it "should render 'show paper' page " do
		create(:paper)
		get :show, id: 1
		expect(response).to render_template("show")
	end
	it "should render 'index' page " do
		get :index
		expect(response).to render_template("index")
	end
	it "should render 'edit' page " do
		create(:paper)
		get :edit, id: 1
		expect(response).to render_template("edit")
	end
	it "should redirect to 'papers' when a paper is deleted" do
		create(:paper)
		@size = Paper.all.size
		get :destroy, id: 1
		#expect(response).to render_template("index")
		expect(@size-1).to eq Paper.all.size
		
	end
end
