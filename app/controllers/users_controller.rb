class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create 
    @user = User.new(params[:user])
    if @user.save
      flash[:notice] = "Registration successful."
      redirect_to root_url
    else
      render :action => 'new'
    end
  end
  def show
    @user = current_user 

    respond_to do |format|
      format.html
      format.xml {render :xml => @bid}
    end
  end
end
