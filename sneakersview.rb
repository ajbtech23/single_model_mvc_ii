require_relative "./sneaker"

class SneakersView

  def display_all_sneakers(arr_sneaker_objs)
    arr_sneaker_objs.each_with_index do |sneaker, index|
      puts("#{index + 1} ==> #{sneaker.name}")
    end
  end

  def display_specific_sneaker(sneaker_obj)
    puts("#{sneaker_obj.name}")
  end

  def get_sneaker_detail_(stuff)
    print("#{stuff}?\n> ")
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
