class SearchController < ApplicationController
  def index
    @house = params['house']
    conn = Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['HARRY_POTTER_API']
    end

    response = conn.get('characters') do |f|
      f.params['orderOfThePhoenix'] = true
      f.params['house'] = @house
    end

    json = JSON.parse(response.body, symbolize_names: true)
    @characters = json.map do |character|
      Character.new(character)
    end
  end
end
