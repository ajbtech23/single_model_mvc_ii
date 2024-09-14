require "csv"
require_relative "./sneaker"

class SneakerRepository
  attr_reader :sneakers, :next_id

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @sneakers = []
    @next_id = 1
    load_csv if File.exist?(@csv_file_path)
  end

  def all
    return @sneakers
  end

  def find_specific_sneaker(user_input_sneaker_choice)
    user_input_sneaker_choice_index = user_input_sneaker_choice - 1
    return @sneakers[user_input_sneaker_choice_index]
  end

  def create(sneaker_obj_new)
    sneaker_obj_new.id = @next_id
    @sneakers << sneaker_obj_new
    save_csv
    @next_id += 1
  end

  def destroy_specific_sneaker(user_input_sneaker_choice)
    user_input_sneaker_choice_index = user_input_sneaker_choice - 1
    @sneakers.delete_at(user_input_sneaker_choice_index)
    save_csv
  end

  private

  def load_csv
    CSV.foreach(@csv_file_path, headers: :first_row, header_converters: :symbol) do |row|
      row[:id] = row[:id].to_i
      @sneakers << Sneaker.new(row)
    end
    @sneakers.each do |sneaker|
      puts("Sneaker ID: #{sneaker.id} Sneaker Name: #{sneaker.name} Sneaker Description: #{sneaker.description}")
    end
    @next_id = @sneakers.empty? ? 1 : @sneakers.last.id + 1
    puts("The current next id is: #{@next_id}")
  end

  def save_csv
    CSV.open(@csv_file_path, "wb") do |csv|
      csv << %w[id name description]
      @sneakers.each do |sneaker|
        csv << [sneaker.id, sneaker.name, sneaker.description]
      end
    end
  end
end




# SNEAKER_CSV_FILE_PATH = File.join(__dir__, "./sneakers.csv")
# sneaker_repository_obj = SneakerRepository.new(SNEAKER_CSV_FILE_PATH)

# user_selected_sneaker = sneaker_repository_obj.find_specific_sneaker(2)
# puts("Your chosen sneaker is the #{user_selected_sneaker.name}; the slogan back in its heyday was: '#{user_selected_sneaker.description}'")

# sneaker_repository_obj.destroy_specific_sneaker(3)
# puts("Following the destruction of a sneaker you now have access to the remaining sneakers:\n")

# sneaker_repository_obj.sneakers.each_with_index do |sneaker, index|
#   puts("#{index + 1} ==> #{sneaker.name}")
# end

# sneaker_obj_mock = Sneaker.new({id: 1, name: "Puma Clydes", description: "slide with pride in your Clydes XD"})
# sneaker_repository_obj.create(sneaker_obj_mock)

# puts

# arr_sneakers = sneaker_repository_obj.all
# arr_sneakers.each do |sneaker|
#   puts("ID: #{sneaker.id} Name: #{sneaker.name} Description: #{sneaker.description}")
# end

# puts("The current next id is #{sneaker_repository_obj.next_id}")
