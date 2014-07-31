module YARD
  module Minitest
    class BlockHandler < YARD::Handlers::Ruby::Base
      handles method_call(:test)

      def process
        subject = YARD::Registry.at(namespace.name.to_s.sub(/Test$/, ''))
        (subject[:tests] ||= []) << {
          description: statement.parameters.first.jump(:string_content).source,
          file: parser.file,
          line: statement.line,
          source: statement.block[1].source
        }
      end
    end
  end
end
