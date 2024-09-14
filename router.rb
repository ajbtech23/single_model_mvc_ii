class Router
  attr_writer :running

  def initialize(sneakers_controller_obj)
    @sneakers_controller_obj = sneakers_controller_obj
    @running = true
  end

  def run
    while @running
      menu
      int_user_input_menu_selection = (get_user_input_menu_selection).to_i
      actions(int_user_input_menu_selection)
    end
  end

  private

  def menu
    print
    puts("\n---------- Welcome ----------")
    puts("Option (1) Display all of the sneakers you currently have in your collection")
    puts("Option (2) Add a brand new pair of sneakers to your collection")
    puts("Option (3) Pull out a specific pair of sneakers in your collection")
    puts("Option (4) Remove a specific pair of sneakers from your collection")
    puts("Option (5) Quit the application")
    puts("-----------------------------")
  end

  def get_user_input_menu_selection
    print("\nUse the number pad to choose from one of the options presented above:\n> ")
    return gets.chomp
  end

  def actions(int_user_input_selection)
    if int_user_input_selection == 1
      @sneakers_controller_obj.list
    elsif int_user_input_selection == 2
      @sneakers_controller_obj.add
    elsif int_user_input_selection == 3
    elsif int_user_input_selection == 4
    elsif int_user_input_selection == 5
      @running = false
    else
      puts("Your input has not been understood; please try again...")
    end
  end
end
