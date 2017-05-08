class VotesController < ApplicationController

	def new
		@vote = Vote.new
	end
	
	def create
		@article = Article.find(params[:article_id])
		@vote = @article.votes.create(vote_params)
  		redirect_to article_path(@article)
	end     
	
	private
	def vote_params
	 	params.require(:vote).permit(:username, :type, :article)
 
	end




end
