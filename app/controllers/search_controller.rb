class SearchController < ApplicationController
  def index
    @house = params['house']
    results = HogwartsResults.new
    @characters = results.get_pheonix_characters_by_house(@house)
  end
end
