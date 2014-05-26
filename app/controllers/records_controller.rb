class RecordsController < ApplicationController
  def new
  	@record = Record.new
  end

  def create
  	@record = Record.new(record_params)
  	if @record.save
  		redirect_to records_url	
  	else
  		render new
  	end
  end

  def index
  	@records = Record.all
  end

  private

  	def record_params
  		params.require(:record).permit(:card_id, :money, :description)
  	end
end
