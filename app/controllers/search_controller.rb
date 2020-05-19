class SearchController < ApplicationController
  def index
    results = HogwartsResults.new
    @characters = results.get_pheonix_characters_by_house(@house)
    @house = params['house']
  end
end
