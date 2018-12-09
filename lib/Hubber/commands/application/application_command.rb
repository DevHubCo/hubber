module Hubber
  module Command
    class ApplicationCommand < Base
      desc "perform", "Generate new hubber project"

      def perform(*args)
        puts "Generate new hubber project"
      end
    end
  end
end