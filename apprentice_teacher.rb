require_relative 'teacher'


class ApprenticeTeacher < Teacher
  # RATING = 80   
  # TARGET_RAISE = 800

  def initialize(options={})
    super

    @rating = 80
    @target_raise = 800
    @placeholder = {p1: "crazy", p2: "."}
    # @target_raise = self.class::TARGET_RAISE
  end

  undef_method :performance_rating


  def attend_training_session
    puts "Whoa. I know ruby-fu"
  end
end
