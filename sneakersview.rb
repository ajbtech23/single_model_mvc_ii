require_relative "./sneaker"

class SneakersView

  def display_all_sneakers(arr_sneaker_objs)
    puts
    arr_sneaker_objs.each_with_index do |sneaker, index|
      puts("Ranking in your collection: #{index + 1} ==> #{sneaker.name}")
    end
  end

  def display_sneaker_description(sneaker_obj)
    puts("\nThe #{sneaker_obj.name} were often described as: #{sneaker_obj.description}")
  end

  def display_specific_sneaker(sneaker_obj)
    puts("#{sneaker_obj.name}")
  end

  def get_sneaker_detail_(stuff)
    print("\n#{stuff}?\n> ")
    return gets.chomp
  end

  def get_sneaker_display_number(int_option)
    if (int_option == 1)
      print("\nWhich sneaker would you like to learn more about from your collection? Choose the sneaker using their Ranking value shown above:\n> ")
    elsif (int_option == 2)
      print("\nWhich sneaker would you like to remove from your collection? Choose the sneaker using their Ranking value shown above:\n> ")
    end
    return gets.chomp
  end

end

# sneaker_obj_a = Sneaker.new({id: 1, name: "Puma Kings", description: "for the King of Strikers"})
# sneaker_obj_b = Sneaker.new({id: 2, name: "Air Jordan 4s", description: "MJ himself swears by these..."})
# sneaker_obj_c = Sneaker.new({id: 3, name: "Nike Air Force 2s", description: "a close personal fave from childhood"})

# arr_sneaker_objs_mock = [sneaker_obj_a, sneaker_obj_b, sneaker_obj_c]

# sneakers_view_obj = SneakersView.new

# sneakers_view_obj.display_all_sneakers(arr_sneaker_objs_mock)
# sneakers_view_obj.display_specific_sneaker(sneaker_obj_a)

# puts(sneakers_view_obj.get_sneaker_detail_("Name"))
# puts(sneakers_view_obj.get_sneaker_detail_("Description"))
