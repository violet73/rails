class UsersController < ApplicationController

  def show
	  @user = User.find(params[:id])
	  render json: @user
  end



  def edit
	  @user = User.find(params[:id])
	  #@user.update_attributes()
  end

  def update
	  @user = User.find(params[:id])
	  if @user.update_attributes(user_params)
		  # 处理更新成功的情况
	  else
		  render 'edit'
	  end
  end



end
