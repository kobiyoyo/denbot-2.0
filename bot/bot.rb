require 'slack-ruby-bot'
require_relative '../app/models/addition.rb'
require_relative '../app/views/additions/addition.rb'

SlackRubyBot::Client.logger.level = Logger::WARN

class AdditionBot < SlackRubyBot::Bot
  help do
    title 'Addition Bot'
    desc 'This bot lets you perform simple arithmetic'

    command 'calculate' do
      desc 'Add numbers'
    end
    end
    model = Addition.new
    view = AdditionView.new
    @controller = AdditionsController.new(model, view)
    @controller.class.command_class.routes.each do |route|
      warn route.inspect
    end
end

