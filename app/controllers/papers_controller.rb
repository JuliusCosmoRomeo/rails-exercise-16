class PapersController < ApplicationController
def new
end 
def create 
	@paper = Paper.new(paper_params)
	@paper.save
	#if @paper.save
	#	redirect_to @author
	#else 
	render 'new'
	#end
end
def paper_params
	params.require(:paper).permit(:title, :venue, :year)
end
end
