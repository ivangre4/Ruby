class UsersController < ApplicationController
  
  def index
    @users = User.paginate(page: params[:page], per_page: 5)
  end

  def show
    set_user
    @articles = @user.articles.paginate(page: params[:page], per_page: 5)
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "Welcome to Alpha Blog #{@user.username}, you are successfully signed up"
      redirect_to @user
    else
      render 'new'
    end
  end

  def edit
    set_user
  end

  def update
    set_user
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated."
      redirect_to @user
    else
      render 'edit'
    end
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end

  def set_user
    @user = User.find(params[:id])
  end

end

