class AuthorsController < ApplicationController
  def show 
  	@author = Author.find(params[:id])
  end
  def new

  end
  def create 
  	@author = Author.new(author_params)


  	@author.save
  	redirect_to @author
  	#render "new"
  end
  def author_params
  	params.require(:author).permit(:first_name, :last_name, :homepage)
  end
end
