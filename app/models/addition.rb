require 'slack-ruby-bot'
class AdditionModel < SlackRubyBot::MVC::Model::Base
	attr_accessor :_line
	def addition_logic(line)
		self._line = line
		input = parse(_line)
		result = nil;
        r = /\A\p{Alnum}*\p{L}\p{Alnum}*\z/
      	input.each do |x|
      	 if x.match?(r)
           result =  "Error"
      	   break
      	 end
        end 
        if(!result)
           result = input.map(&:to_i).reduce(:+)
        end
        result
	end
	private 
	def parse(line)
		line.split('+')
	end
end
