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
	
	
end
