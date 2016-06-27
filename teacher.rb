require_relative 'devbootcamper'


class Teacher < Devbootcamper
  attr_reader :salary, :target_raise, :rating, :performance_rating 

  # RATING = 90
  # TARGET_RAISE = 1000  #set self on this too since i did for app teacher?

  def initialize(options={})
    super
    
    @rating = 90
    @target_raise = 1000 #self.class::TARGET_RAISE
    @placeholder = {p1: "flat-out insane", p2: ", fo SHO!", p3: " *saunters away*"}
  end



  def set_phase(num)
    @phase = num
    "Cool, I've always wanted to teach phase #{num}!"
  end

  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works#{@placeholder[:p2]} "
    response += "*drops #{@placeholder[:p1]} knowledge bomb* "
    response += "... You're welcome.#{@placeholder[:p3]}"
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
    if rating > @rating     #self.class::RATING
      receive_raise(@target_raise)
      response = "Yay, I'm a great employee!"
    else
      response += "Oh, well -- thanks to this actionable, specific, and kind "
      response += "feedback, I'll do better next time."
    end
    response
  end
end

