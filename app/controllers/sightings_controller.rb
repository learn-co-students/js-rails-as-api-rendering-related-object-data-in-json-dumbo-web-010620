class SightingsController < ApplicationController
  def index
    sightings = Sighting.all 
    render json: sightings, except: [:created_at, :updated_at]
  end

  def show
    sighting = Sighting.find_by(id: params[:id])
    render json: sighting, include: [:bird, :location]

    # render json: { id: sighting.id, bird: sighting.bird, location: sighting.location}
    
    #guessWork
    # birdId = sighting[:bird_id] # correct Ruby bracket notation?
    # bird = Bird.find_by(id: birdId)
    # render json: [sighting[:id], sighting[:location_id]] 
    # render json: [sighting, bird]
  end
end
