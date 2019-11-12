class Api::V1::UsersController < ApiController
  def new
    user = User.new
    render json: user
  end

  def create
  end
end
