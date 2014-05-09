require 'minitest_helper'

class TestTemplate < MiniTest::Test

  def setup
    @template = Adoc::Template.new "doc", :upcase, String
  end

  def test_that_method_returns_and_unbound_method
    assert_respond_to @template, :unbound_method
    assert_instance_of UnboundMethod, @template.unbound_method
  end

  def test_respond_to_output
    assert_respond_to @template, :to_output
  end
end