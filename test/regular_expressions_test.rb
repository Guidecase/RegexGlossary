require_relative 'test_helper'

class RegularExpressionsTest < MiniTest::Unit::TestCase
  def test_valid_emails
    assert_valid_regex RegularExpressions::Email, load_fixture('emails')['valid']
  end

  def test_invalid_emails
    assert_invalid_regex RegularExpressions::Email, load_fixture('emails')["invalid"]
  end

  def test_valid_email_lists
    assert_valid_regex RegularExpressions::EmailList, load_fixture('email_lists')['valid']
  end

  def test_invalid_email_lists
    assert_invalid_regex RegularExpressions::EmailList, load_fixture('email_lists')["invalid"]
  end

  def test_valid_postal_codes
    assert_valid_regex RegularExpressions::DutchPostalCode, load_fixture('postal_codes')['valid']
  end

  def test_invalid_postal_codes
    assert_invalid_regex RegularExpressions::DutchPostalCode, load_fixture('postal_codes')["invalid"]
  end  
end