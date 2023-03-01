class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # a user should be able to view all their listed projects
  get '/projects/:id' do
    project = User.find(params[:id]).projects
    project.to_json
  end

  # # A user should be able to add a new project to their portfolio.
  post '/create-project/:id' do
    project = User.find(params[:id]).projects.create(
      title: params[:title],
      description: params[:description],
      image_url: params[:image_url]
    )
    project.to_json

  end

  # # A user should be able to update existing project data.
  patch '/update-project/:id/:id2' do
    data = JSON.parse(request.body.read) 
    project = User.find(params[:id]).projects
    project.find(params[:id2]).update(data)
    project.to_json
  end

  # # A user should be able to delete a project.
  delete '/delete-project/:id/:id2' do
    "deleted a project!"
    project = User.find(params[:id]).projects
    project.find(params[:id2]).destroy
   end

  



end
