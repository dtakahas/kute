module Kute
  def check_dependencies
    unless `which kubectl`.size > 0
      puts "You are missing kubectl. Please install it."
      exit
    end
  end
end
