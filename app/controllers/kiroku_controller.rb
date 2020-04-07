class KirokuController < ApplicationController
    before_action :authenticate_user
  def index
      @kirokus = Kirkoku.all.order(created_at: :desc)
      @kiroku = Kirkoku.where(user_id: @current_user.id)
      @data = Kirkoku.where(user_id: @current_user.id).order(created_at: :desc)
  end
  
  def show
      @kiroku = Kirkoku.find_by(id: params[:id])
      
  end
  
  def new
  end
  
  def create
      @kiroku = Kirkoku.new(datetime: params[:datetime],time: params[:time],content: params[:content], image: params[:image], user_id: @current_user.id
                            )
      @kiroku.save
      
      redirect_to("/kiroku/index")
  end
  
end
