require_relative 'devbootcamper'


class Teacher < Devbootcamper
  attr_reader :age, :phase, :performance_rating #:target_raise
  attr_accessor :name, :salary, :target_raise

  PERFORMANCE_RATING = 90
  # TARGET_RAISE = 1000  #set self on this too since i did for app teacher?

  def initialize(options={})
    super
    @phase = 3
    @target_raise = 1000
  end

  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works, fo SHO! "
    response += "*drops flat-out insane knowledge bomb* "
    response += "... You're welcome. *saunters away*"
    response
    #use a string <--- thingy? to eliminate all the responses?
  end

  def salary=(new_salary)
    puts "This better be good!"
    @salary = new_salary
  end

  def receive_raise(raise)
    @salary += raise
  end

  def set_performance_rating(rating)
    response = ""
    if rating > self.class::PERFORMANCE_RATING
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end
