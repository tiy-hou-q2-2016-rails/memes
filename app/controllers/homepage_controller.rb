class HomepageController < ApplicationController



  before_action only: :private do
    if @current_user.nil?
      redirect_to sign_in_path
    end
  end


  def show
  end

  def private
  end
end
