require 'ansi/code'
require 'turn'
require 'yaml'
require 'minitest/autorun'
require_relative '../lib/regex_glossary'

class MiniTest::Unit::TestCase
  def load_fixture(name)
    YAML.load( File.read( File.join( File.dirname(__FILE__), 'fixtures', "#{name}.yml" ) ) )
  end

  def assert_valid_regex(regexp, strings)
    strings.each do |str|
      assert str =~ regexp, "#{str} should be valid but it is not"
    end
  end

  def assert_invalid_regex(regexp, strings)
    strings.each do |str|
      assert str !~ regexp, "#{str} should be invalid but it is not"
    end
  end
end