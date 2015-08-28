get '/' do
  erb :index
end

post '/login' do
  p params
  @username = params[:username]
  user = User.find_by(:username => @username)

  if(user && user.password == params[:password])
    auth_login(user)
  redirect "/surveys"
  else
    @form_error = "Incorrect username or password"
    erb :index
  end
end


post '/signup' do
  @user = User.new
  @user.username = params[:username]
  @user.password = params[:password]

  if @user.save
    auth_login(@user)
  redirect "/surveys"
  else
    @form_error = "Unable to register"
    erb :index
  end
end

get '/logout' do
  auth_logout
  redirect '/'
end


