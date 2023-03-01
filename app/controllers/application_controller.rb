class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # a user should be able to view all their listed projects
  get '/projects/:id' do
    project = User.find(params[:id]).projects
    project.to_json
  end




end
