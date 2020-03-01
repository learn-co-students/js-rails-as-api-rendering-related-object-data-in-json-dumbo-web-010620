Rails.application.routes.draw do
  # get 'sightings/index'
  # get 'sightings/show'
  get '/birds' => 'birds#index'
  get '/birds/:id' => 'birds#show'
  get '/sightings' => 'sightings#index'
  get '/sightings/:id' => 'sightings#show'
end