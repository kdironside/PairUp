class UsersController < ApplicationController
  before_filter :authenticate_user!
  load_and_authorize resource


  def index
    authorize! :index, @user, :message => 'Not authorized as an administrator.'
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(params[:id])
    if @user.bookings_present?
        format.html { redirect_to @user, notice: 'User cannot be delete, bookings exist!' }
    else
      @user.destroy
      respond_to do |format|
        format.html { redirect_to users_url }
      end
    end
  end









end
