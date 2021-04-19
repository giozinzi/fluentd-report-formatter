require "helper"
require "fluent/plugin/filter_formatreport.rb"

class FormatreportFilterTest < Test::Unit::TestCase
  setup do
    Fluent::Test.setup
  end

  test "failure" do
    flunk
  end

  private

  def create_driver(conf)
    Fluent::Test::Driver::Filter.new(Fluent::Plugin::FormatreportFilter).configure(conf)
  end
end
