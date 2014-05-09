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
      method_name = method_name.to_sym
      return doc_cache[method_name] if has_doc_for? method_name
      look_for method_name
    end

    protected def look_for method_name
      if superclass.respond_to? :doc_for
        superclass.doc_for method_name
      else
        nil
      end
    end

    def has_doc_for? method_name
      doc_cache.has_key? method_name.to_sym
    end

    def adoc doc, method_name
      doc_cache[method_name.to_sym] = doc
    end

    def doc_cache
      @doc_cache ||= Hash.new
    end
  end
end
