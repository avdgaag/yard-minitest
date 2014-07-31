module YARD
  module Minitest
    class MethodHandler < YARD::Handlers::Ruby::MethodHandler
      handles :def

      def process
        super
        if namespace.name.to_s =~ /Test$/
          method_name = statement.method_name(true).to_s
          if method_name =~ /^test_/
            subject = YARD::Registry.at(namespace.name.to_s.sub(/Test$/, ''))
            (subject[:tests] ||= []) << {
              description: method_name.gsub(/^test|_/, ' ').strip,
              file: parser.file,
              line: statement.line,
              source: statement.block.source
            }
          end
        end
      end
    end
  end
end
