class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    redirect_to root_path if current_user
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    @user = User.find(params[:id])
    if current_user == @user 
      render 'edit'
    else
      redirect_to root_path
    end
  end

  def update
    @user = User.find(params[:id])
    if current_user == @user 
      @user.update(user_params)
      redirect_to @user
    else
      redirect_to root_path
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
    redirect_to users_path
  end

  def add_balance
    @user = current_user
    @user.save
    redirect_to edit_user_path(@user)
  end

  private
  def user_params
  
      params.require(:user).permit(:name, :email, :password, :password_confirmation)

  end

end
