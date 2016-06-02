require_relative 'funables'
require_relative 'person'
require_relative 'teachables'
require_relative 'moneyables'

class Teacher < Person
  attr_reader  :salary, :performance_rating, :target_raise
  
  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end

  include Funables, Teachables, Moneyables

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
  end

  def set_performance_rating(rating)
    response = ""
    if rating > 90
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
