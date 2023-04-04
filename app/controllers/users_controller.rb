class UsersController < ApplicationController
 # Get a list of users
 def index
    render json: User.all 
  end

  def signup
    user = User.create(user_params)
    if user.valid?
        session[:user_id] = user.id
        render json: user, status: :created
    else
        render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

# login user
def login
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: user, status: :ok
    else
        render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
end
#logout user
def destroy
    session.delete :user_id
    head :no_content
end

private
def user_params
    params.permit(:username, :email, :password)
end

end
