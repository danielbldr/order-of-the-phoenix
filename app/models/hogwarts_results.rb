class HogwartsResults
  def get_pheonix_characters_by_house(house)
    hogwarts_service = HogwartsService.new
    characters = hogwarts_service.get_order_of_pheonix_by_house(house)
    characters.map do |character|
      Character.new(character)
    end
  end
end
