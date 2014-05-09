require "adoc/version"

module Adoc

  def self.included klazz
    klazz.extend ClassMethods
    klazz.include InstanceMethods
  end

  def self.extended klazz
    klazz.extend ClassMethods
    klazz.include InstanceMethods
  end

  module InstanceMethods
  end

  module ClassMethods

    def doc_for method_name
      doc_cache[method_name.to_sym] || ""
    end

    def adoc doc, method_name
      doc_cache[method_name.to_sym] = doc
    end

    def doc_cache
      @doc_cache ||= Hash.new
    end
  end
end
