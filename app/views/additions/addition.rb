require 'slack-ruby-bot'
class AdditionView < SlackRubyBot::MVC::View::Base
	def addition_succeeded(result)
    say(channel: data.channel,text: result)
  end
	def addition_failed
    say(channel: data.channel,text:  "Sorry, I didn't understand that. I only add numbers in this format. eg: 5+6 or 6+3")
  end
end