class AmazonController < ApplicationController
	def index
	end

	def test
		puts "here"
		@res = Amazon::Ecs.item_search(params[:search], {:response_group => 'Images'}).first_item
		@res = @res.get_hash
		@res['LargeImage'] = @res['LargeImage'][5..(@res['LargeImage'].index('</URL>')-1)]
		render :book_template, :layout => false
	end
end