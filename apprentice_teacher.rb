require_relative 'teacher'


class ApprenticeTeacher < Teacher
  # no attrs needed...right? everything inher from teacher

  PERFORMANCE_RATING = 80   #supposed to name var perf rating  
                              #for rspec test?
  TARGET_RAISE = 800
  PHASE = 3

  def initialize(options={})
    super

    # @target_raise = 1000  #after super, it doesn't default to 1000? have to set constance var or ... ?   OR need to comment out target raise in attr on teacher file?

    @phase = self.class::PHASE
    @target_raise = self.class::TARGET_RAISE
  end

#probably could interpolate the few diffs from this and teachers
  def teach_stuff
    response = ""
    response += "Listen, class, this is how everything works. "
    response += "*drops crazy knowledge bomb* "
    response += "... You're welcome."
    response
  end


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
