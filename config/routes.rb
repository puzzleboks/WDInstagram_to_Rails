Rails.application.routes.draw do
  get "entries" => "entries#index"
  get "entries" => "entries#new"
  get "entries" => "entries#show"
  post "entries" => "entries#create"
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
