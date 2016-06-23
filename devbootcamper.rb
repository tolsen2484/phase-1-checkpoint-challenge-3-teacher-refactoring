
class Devbootcamper

	attr_accessor :age, :name, :phase  #is attr right?

	def initialize(options = {})
    	@age = options.fetch(:age, 0)
    	@name = options.fetch(:name, "")
    	@phase = options.fetch(:phase, 3)
	end

 	def offer_high_five
    	"High five!"
  	end
end