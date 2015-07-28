class EntriesController < ApplicationController
  # index
  def index
    @entries = Entry.all
  end

  # new
  def new
    @artist = Artist.new
  end

  # create
  def create
    @artist = Artist.create!(artist_params)
    redirect_to (artist_path(@artist))
  end

  #show
  def show
    @artist = Artist.find(params[:id])
  end

  # edit
  def edit
    @artist = Artist.find(params[:id])
  end


  # update
  def update
    @artist = Artist.find(params[:id])
    @artist.update(artist_params)
    redirect_to artist_path(@artist)
  end

  # destroy
  def destroy
    @artist = Artist.find(params[:id])
    @artist.destroy
    redirect_to artists_path
  end

  # # index
  # get "/" do
  #   @entries = Entry.all
  #   erb :"index"
  # end
  #
  # get "/entries" do
  #   # @entries = Entry.all
  #   erb :"entries/index"
  # end
  #
  # # new
  # get '/entries/new' do
  #   erb :"entries/new"
  # end
  #
  # # show
  # get '/entries/:id' do
  #   # @apartments = Apartment.find(params[:id])
  #   erb :"entries/show"
  # end
  # # create
  # post '/entries' do
  #   # @apartment = Apartment.create(params[:apartment])
  #   # redirect "/apartment/#{@apartment.id}"
  # end

end
