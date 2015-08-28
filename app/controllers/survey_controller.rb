

get '/surveys' do
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys/new' do
  #grab info from surveys/new form and save to db
  redirect '/surveys'
end





