class RecordsController < ApplicationController
  def new
  	@record = Record.new
  end

  def create
  	@record = Record.new(record_params)
  	if @record.save
                flash[:success] = "create success"
  		redirect_to records_url	
  	else
  		render 'new'
  	end
  end

  def index
  	@records = Record.all
  end

  def edit
    @record = Record.find(params[:id])
  end

  def update
    @record = Record.find(params[:id])
    if @record.update_attributes(record_params)
      flash[:success] = "update success"
      redirect_to records_url
    else
      render 'edit'
    end
  end

  private

  	def record_params
  		params.require(:record).permit(:card_id, :money, :description)
  	end
end
