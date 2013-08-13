require File.expand_path("#{File.dirname(__FILE__)}/test_helper")

class TestDeccanplato < MiniTest::Unit::TestCase

  def test_post_json    
    response =megams.post_crm(sandbox_json)
    assert_equal(200, response.status)
  end

end


