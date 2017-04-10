class UsersController < ApplicationController

  def index
    @users = User.sorted
  end

  # def show
  #
  # end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "The user #{@user.name} was created successfully."
      redirect_to('index')
    else
      render('new')
    end

  end

  def edit
    @user = User.find(params[:id])
  end

  def update

  end

  def delete
    @user = User.find(params[:id])
  end

  def destroy

  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :username, :email, :password)
  end

end
