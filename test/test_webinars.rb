require 'helper'

class WebinarsTest < Test::Unit::TestCase

  context "methods" do

    setup do
      @c = GoToWebinar::API.new("12345", "54321")
    end

    should "generate valid get historical webinars" do
      assert true
    end
    
    should "generate valid upcoming webinars" do
      assert true
    end
    
    should "generate valid get webinar" do
      assert true
    end

    should "generate valid get webinar meeting times" do
      assert true
    end
    
    should "generate valid get webinars" do
      assert true
    end
    

  end
end
