require "active_support"
require "active_support/dependencies/autoload"

require "thor"

module Hubber
  module Command
    extend ActiveSupport::Autoload
    
    autoload :Base

    class << self
      def invoke(full_namespace, args = [], **config)
        require_relative "commands/application/application_command"

        ApplicationCommand.perform(:perform, args, config)
      end
    end
  end
end