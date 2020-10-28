# frozen_string_literal: true

#  users contoller for main application and database
class UsersController < ApplicationController
  def index
    update_points
    @users = User.sorted
    # @users = User.order(params[:position])
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @users = User.sorted
    @user = User.new({ username: '' })
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = 'New member added successfully!'
      redirect_to(users_path)
    else
      render('new')
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      flash[:notice] = 'Member Points updated successfully!'
      redirect_to(user_path(@user))
    else
      render('edit')
    end
  end

  def delete; end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :position_id, :member_points, :email, :username, :password)
  end

  def update_points
    User.all.each do |user|
      @username = user.username
      @position_id = user.position_id
      @events = Event.all
      @attendances = Attendance.where(username: @username)
      @total_attendance = @attendances.count
      @multiplier = Position.where(position_title: @position_id).first.multiplier
      @total_points = 0
      @attendances.each do |attendance|
        @events.each do |event|
          @total_points += (event.point_amount * @multiplier) if event.event_name.match?(attendance.event_id)
        end
      end
      user.update_attributes(member_points: @total_points)
    end
  end
end
