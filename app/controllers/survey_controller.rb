

get '/surveys' do
  erb :'surveys/index'
end

get '/surveys/new' do
  erb :'surveys/new'
end

post '/surveys/new' do
  survey = Survey.create(title: params[:title])
  question = survey.questions.create(description: params[:description])
  question.choices.create(option: params[:option1])
  question.choices.create(option: params[:option2])
  question.choices.create(option: params[:option3])
  question.choices.create(option: params[:option4])


  #grab info from surveys/new form and save to db
  redirect '/surveys'
end





