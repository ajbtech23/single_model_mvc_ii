require_relative "./sneakersrepository"
require_relative "./sneakerscontroller"
require_relative "./router"

SNEAKERS_CSV_FILE_PATH = File.join(__dir__, "./sneakers.csv")
sneakers_repository_obj_active = SneakerRepository.new(SNEAKERS_CSV_FILE_PATH)
sneakers_controller_obj_active = SneakersController.new(sneakers_repository_obj_active)
router_obj = Router.new(sneakers_controller_obj_active)

router_obj.run()
