class HomeController < ApplicationController
    before_action :authenticate_user, {only: [:main]}
    before_action :forbid_login_user, {only: [:top]}
    
  def top
  end
  def about
  end
  def record
  end
  def testtop
      end
  def main
      end
  def signin
      end
  def signup
      end
  
end
