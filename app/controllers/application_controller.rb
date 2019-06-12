class ApplicationController < ActionController::API
  # -> check to see IF we have headers
     # -> is there a token
     # -> decode the token
     # -> send back user id

 def encode_token(payload)
   JWT.encode(payload, ENV["JWT_KEY"])
   # payload {user_id: 1}
   # => encrypted key
 end

 def decode_token
   # if headers -> let's decode it else return nil
   # JWT.decode()
   begin
     JWT.decode(auth_headers, ENV["JWT_KEY"])
   rescue
     nil
   end
 end

 def auth_headers
   # check for headers
   request.headers["Authorization"]
   # returns the JWT
 end

 def curr_user
   user_id = decode_token[0]["user_id"]
   User.find(user_id)
 end

 # def logged_in
 #   # is there a curr_user
 #   !!curr_user
 # end
 #
 # def authorized
 #   # if there is a curr_user meaning they've been correctly validated
 #   # allow them in our application
 #   # otherwise send an error
 #   render json: {errors: 'Please log in'} unless logged_in
 # end
end
