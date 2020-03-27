class KirokuController < ApplicationController
  def index
      @kirokus = Kirkoku.all.order(created_at: :desc)
      
      
  end
  
  def show
      @kiroku = Kirkoku.find_by(id: params[:id])
  end
  
  def new
  end
  
  def create
      @kiroku = Kirkoku.new(datetime: params[:datetime],time: params[:time],content: params[:content], image: params[:image])
      @kiroku.save
      
      redirect_to("/kiroku/index")
  end
  
end
