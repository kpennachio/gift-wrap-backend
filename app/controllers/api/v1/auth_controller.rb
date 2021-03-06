class Api::V1::AuthController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      # prove that the user exists in our database
      # -> lets send them a token!
      # -> the token will help us identify and validate our client
      jwt = encode_token({user_id: user.id})
      render json: {user: user, jwt: jwt}
    else
      render json: {errors: "Please enter the correct username and password!"}
    end
  end

  def auto_login
    # the auth flow
      # -> lets check to see IF we have headers
      # -> is there a token
      # -> decode the token
      # -> send back user
    user = curr_user

    if user
      render json: user
    else
      render json: {errors: "No current user"}
    end
  end
end
