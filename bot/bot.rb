require 'slack-ruby-bot'

class AdditionBot < SlackRubyBot::Bot
  help do
    title 'Addition Bot'
    desc 'This bot lets you perform simple arithmetic'

    command 'calculate' do
      desc 'Add numbers'
    end
    model = AdditionModel.new
    view = AdditionView.new
    @controller = AdditionsController.new(model, view)
    @controller.class.command_class.routes.each do |route|
      warn route.inspect
    end
end

AdditionBot.run