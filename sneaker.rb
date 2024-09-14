class Sneaker
  attr_reader :id, :name, :description
  attr_writer :id

  def initialize(attributes = {})
    @id = attributes[:id]
    @name = attributes[:name]
    @description = attributes[:description]
  end
end

# sneaker_obj_test = Sneaker.new({id: 1, name: "Air Jordan 4", description: "I wanna be like Mike!"})
# puts(sneaker_obj_test)
# puts("The #{sneaker_obj_test.name} always conjures the same feeling: #{sneaker_obj_test.description}")
