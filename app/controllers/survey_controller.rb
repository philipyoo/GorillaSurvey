

get '/users/:user_id/surveys' do
  @current_user = auth_current_user
  erb :'surveys/index'
end

get '/users/:user_id/surveys/new' do
  @current_user = auth_current_user
  erb :'surveys/new'
end

post '/users/:user_id/surveys/new' do
  #grab info from surveys/new form and save to db
  redirect "/users/#{@current_user.id}/surveys"
end





