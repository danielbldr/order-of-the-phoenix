class Character
  attr_reader :name, :role, :house, :patronus

  def initialize(character_info)
    @name = character_info[:name].titleize
    @role = character_info[:role].presence ? character_info[:role].titleize : 'Role Unknown'
    @house = character_info[:house]
    @patronus = character_info[:patronus].presence ? character_info[:patronus].titleize : 'Patronus Unknown'
  end
end
