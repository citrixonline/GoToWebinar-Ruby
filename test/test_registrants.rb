require 'helper'

class RegistrantsTest < Test::Unit::TestCase

  context "methods" do

    setup do
      @c = GoToWebinar::Client.new("12345", "54321")
    end

    should "generate valid create registrant" do
      FakeWeb.register_uri(:post, "https://api.citrixonline.com/G2W/rest/organizers/54321/webinars/12345/registrants", :body => '{"registrantKey":"12345"}', :content_type => "application/json", :status => ["201", "Created"])
      @r = @c.create_registrant("12345",{"email" => "nathanwfish@something.com"})
      assert FakeWeb.last_request.body.is_a?(String)
      assert_equal('{"email":"nathanwfish@something.com"}', FakeWeb.last_request.body)
      assert @r.parsed_response.is_a?(Hash)
      assert_equal('12345', @r.parsed_response["registrantKey"])      
    end
    
    should "generate valid get registrant" do
      FakeWeb.register_uri(:get, "https://api.citrixonline.com/G2W/rest/organizers/54321/webinars/12345/registrants/54321", :body => '{"registrantKey":"12345"}', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_registrant("12345","54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Hash)
      assert_not_nil @r.parsed_response["registrantKey"]
 
    end
    
    should "generate valid get registrants" do
      FakeWeb.register_uri(:get, "https://api.citrixonline.com/G2W/rest/organizers/54321/webinars/12345/registrants", :body => '[{"registrantKey":"12345"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_registrants("12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["registrantKey"]
    end

    should "generate valid get registrant fields" do
      FakeWeb.register_uri(:get, "https://api.citrixonline.com/G2W/rest/organizers/54321/webinars/12345/registrants/fields", :body => '[{"field":"12345"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_registrant_fields("12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["field"]
    end

  end
end
