class RecordsController < ApplicationController
  def index
      
  end
  def new
  @record = records.time
  end
  
  def create
  
  redirect_to("/records/index")
 
  end
  
  
end
