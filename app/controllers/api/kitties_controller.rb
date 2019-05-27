class Api::KittiesController < ApplicationController

  def index
    search_term = params[:breed]
    @kitties = HTTP
      .headers("x-api-key" => ENV["api_key"])
      .get("https://api.thecatapi.com/v1/breeds/search?q=#{search_term}")
      .parse

    render 'index.json.jbuilder'
  end

end
