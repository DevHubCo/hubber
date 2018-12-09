require "thor"

module Hubber
  module Command
    class Base < Thor
      class << self
        def perform(command, args, config)
          dispatch(command, args.dup, nil, config)
        end
      end
    end
  end
end