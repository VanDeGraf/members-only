class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:index]
  # GET /users or /users.json
  def index
    @users = User.all
  end
end
