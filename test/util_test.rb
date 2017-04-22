require 'minitest/autorun'
require 'tlo/util'

describe Tlo::Util do
  describe 'print_ruby_version' do
    it 'should return the version of ruby' do
      assert_equal(RUBY_VERSION, Tlo::Util.print_ruby_version)
    end
  end
end
