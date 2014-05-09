require 'minitest_helper'

class TestAdocClassMethods < MiniTest::Test

  def setup
    @a_doc = a_doc = "doc"
    @a = Class.new do
      include Adoc
      adoc a_doc,
      def my_method
      end 
    end

    @b_doc = b_doc = "doc b"
    @b = Class.new(@a) do
      adoc b_doc,
      def my_method
      end
    end

    refute_equal @a_doc, @b_doc
    assert_equal @a, @b.superclass
  end

  def test_that_adds_documentation_to_method
    assert_equal @a_doc, @a.doc_for(:my_method)
  end

  def test_that_child_classes_have_its_own_documentation
    assert_equal @b_doc, @b.doc_for(:my_method)
  end
end