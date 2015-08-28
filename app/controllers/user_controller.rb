get '/' do
  erb :index
end

post '/' do



  redirect '/surveys'
end
