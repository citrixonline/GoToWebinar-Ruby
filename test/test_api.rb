require 'helper'

class APITest < Test::Unit::TestCase

  context "attributes" do

    setup do
      @c = GoToWebinar::API.new("12345")
    end

    should "have access_token is set" do
      assert_equal(@c.access_token, "12345")
    end
    
    should "have valid accept header" do
      assert_equal("application/json", @c.class.headers["Accept"])
    end
    
    should "have valid content-type header" do
      assert_equal("application/json", @c.class.headers["Content-type"])
    end
    
    should "have custom OAuth header" do
      assert_equal("OAuth oauth_token=12345", @c.class.headers["Authorization"])
    end
    
  end
end
