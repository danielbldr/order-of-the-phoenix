require 'rails_helper'

RSpec.describe 'Potter API', type: :requests do
  it 'returns order of pheonix characters by house' do
    results = HogwartsResults.new
    characters = results.get_pheonix_characters_by_house('Gryffindor')
    expect(characters.length).to eq(21)
    expect(characters.first.house).to eq('Gryffindor')
  end
end
