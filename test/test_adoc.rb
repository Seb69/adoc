require 'minitest_helper'

class TestAdoc < MiniTest::Test
  def test_that_it_includes_instance_methods_when_included
    a = Class.new
    a.include Adoc
    assert_includes a.ancestors, Adoc::InstanceMethods
  end

  def test_that_it_includes_class_methods_when_included
    a = Class.new
    a.include Adoc
    assert_includes eigenclass(a).ancestors, Adoc::ClassMethods
  end


  def test_that_it_includes_instance_methods_when_extended
    a = Class.new
    a.extend Adoc
    assert_includes a.ancestors, Adoc::InstanceMethods
  end

  def test_that_it_includes_class_methods_when_extended
    a = Class.new
    a.extend Adoc
    assert_includes eigenclass(a).ancestors, Adoc::ClassMethods
  end

  def test_that_class_responds_to_adoc
    a = Class.new
    a.include Adoc
    assert_respond_to a, :adoc
  end

  def eigenclass klazz
    class << klazz; self; end
  end
end
