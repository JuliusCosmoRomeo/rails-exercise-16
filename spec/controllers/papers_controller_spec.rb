require 'rails_helper'

RSpec.describe PapersController, type: :controller do

	it "should render 'new paper' page " do
		get :new
		expect(response).to render_template("new")
	end
end
