module Adoc
  class Template

    attr_reader :doc_str, :method_name, :klazz

    def initialize doc_str, method_name, klazz
      @doc_str = doc_str
      @method_name = method_name.to_sym
      @klazz = klazz
    end

    def unbound_method
      @unbound_method = klazz.instance_method method_name
    end

    def to_output
      "#{klazz.name}##{method_name}:\n#{doc_str}"
    end
  end
end