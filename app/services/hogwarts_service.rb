class HogwartsService
  def get_order_of_pheonix_by_house(house)
    response = conn.get('characters') do |f|
      f.params['orderOfThePhoenix'] = true
      f.params['house'] = house
    end

    JSON.parse(response.body, symbolize_names: true)
  end

  private

  def conn
    Faraday.new(url: 'https://www.potterapi.com/v1/') do |f|
      f.params['key'] = ENV['HARRY_POTTER_API']
    end
  end
end
