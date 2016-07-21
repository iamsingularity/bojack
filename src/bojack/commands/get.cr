require "./command"

module Bojack
  module Commands
    class Get < Command
      self.keyword = "get"

      def execute(memory, key, value)
        memory.read(key)[0]
      rescue
        "error: '#{key}' is not a valid key"
      end
    end
  end
end
