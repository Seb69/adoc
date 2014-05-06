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
  end
end
