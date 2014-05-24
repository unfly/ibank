class CardsController < ApplicationController
# 
def index
	@cards = Card.paginate(page: params[:page])
end
#
def edit
	@card = Card.find(params[:id])
end
#
def update
	@card = Card.find(params[:id])
	if @card.update_attributes(card_params)
		redirect_to cards_url
	else
		render edit
	end
end
#
def new
	@card = Card.new
end
#
def create
	@card = Card.new(card_params)
	if @card.save
		redirect_to cards_url
	else
		render new
	end
end
#
private
	def card_params
		params.require(:card).permit(:name, :num, :limit, :sdate, :pddate, :remark)
	end
end
