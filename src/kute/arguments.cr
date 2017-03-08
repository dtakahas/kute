module Kute
  def check_args
    if ARGV.size == 0
      help_text
      exit
    end
  end
end
