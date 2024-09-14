require_relative "./sneakersrepository"
require_relative "./sneakersview"
require_relative "./sneaker"

class SneakersController

  def initialize(sneakers_repository_obj)
    @sneakers_repository_obj = sneakers_repository_obj
    @sneakers_view = SneakersView.new
  end

  def list
    @sneakers_view.display_all_sneakers(@sneakers_repository_obj.all)
  end

  def add
    sneaker_obj_new_name = @sneakers_view.get_sneaker_detail_("Name")
    sneaker_obj_new_description = @sneakers_view.get_sneaker_detail_("Description")
    @sneakers_repository_obj.create(Sneaker.new({id: 1, name: sneaker_obj_new_name, description: sneaker_obj_new_description}))
    list
  end

  def find
  end

  def remove
  end
end

SNEAKER_CSV_FILE_PATH = File.join(__dir__, "./sneakers.csv")
sneakers_repository_obj_mock = SneakerRepository.new(SNEAKER_CSV_FILE_PATH)

sneakers_controller_obj = SneakersController.new(sneakers_repository_obj_mock)

puts
sneakers_controller_obj.list
puts
sneakers_controller_obj.add
