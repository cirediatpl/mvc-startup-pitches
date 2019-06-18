class PitchesController < ApplicationController

  ## INDEX -- Displays list of all pitches
  get "/pitches" do
    @pitches = Pitch.all
    erb :index
  end

  ## NEW -- Show form to make new pitches
  get "/pitches/new" do
    erb :newpitch
  end

## BONUS -- Show information about industry
get "/pitches/industry" do
    @pitches = Pitch.where("industry = ?", params[:industry].downcase)
    erb :industry
end

  ## SHOW -- Show info about one pitch
  get "/pitches/:id" do
    @pitch = Pitch.find(params[:id])
    erb :pitch
  end



  ## CREATE -- Add new pitch to database, then redirect
  post "/pitches" do
    pitch = Pitch.create(title: params[:title], industry: params[:industry].downcase, funding: params[:funding])
    redirect to("/pitches/#{pitch.id}")
  end

  ## EDIT -- show edit form for one pitch
  get "/pitches/:id/edit" do
    @pitch = Pitch.find(params[:id])
    erb :edit
  end

  ## UPDATE -- Update a particular pitch, then rediret
  patch "/pitches/:id" do
    @pitch = Pitch.find(params[:id])
    @pitch.update(title: params[:title], industry: params[:industry], funding: params[:funding])
    # @pitch.title = params[:title]
    # @pitch.industry = params[:industry]
    # @pitch.funding = params[:funding]

    redirect to("/pitches/#{@pitch.id}")
    
  end

  ## DESTROY -- Delete a particular blog, then redirect
  delete "/pitches/:id" do
    pitch = Pitch.find(params[:id])
    pitch.delete
    redirect to("/pitches")
  end

end