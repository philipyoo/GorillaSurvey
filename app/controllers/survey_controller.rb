

get '/surveys' do
  @current_user = auth_current_user
  erb :'surveys/index'
end

get '/surveys/:id' do
  @current_user = auth_current_user
  @survey = Survey.find(params[:id])
  @question = @survey.questions
  erb :'surveys/show'
end

get '/users/:user_id/surveys/new' do
  @current_user = auth_current_user
  # erb :'surveys/new'
    (erb :'surveys/_new_survey', layout: false).to_json
end

post '/users/:user_id/surveys' do
  @current_user = auth_current_user

  survey = Survey.create(title: params[:title])
  question = survey.questions.create(description: params[:description])
  question.choices.create(option: params[:option1])
  question.choices.create(option: params[:option2])
  question.choices.create(option: params[:option3])
  question.choices.create(option: params[:option4])



  redirect "/surveys"
end




