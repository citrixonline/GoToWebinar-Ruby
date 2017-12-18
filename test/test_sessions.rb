require 'helper'

class SessionsTest < Test::Unit::TestCase

  context "methods" do

    setup do
      @c = GoToWebinar::Client.new("12345", "54321")
    end

    should "generate valid get organizer sessions" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/sessions",:body => '[{"webinarKey":"54321"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_organizer_sessions()
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["webinarKey"]
    end
    
    should "generate valid get session" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345",:body => '[{"registrantKey":"54321"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session("54321","12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["registrantKey"]
    end
    
    should "generate valid get session attendees" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345/attendees",:body => '[{"registrantKey":"54321"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session_attendees("54321", "12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["registrantKey"]
    end

    should "generate valid get session performance" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345/performance",:body => '{"attendance":{"registrantCount":1234}}', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session_performance("54321", "12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Hash)
      assert_not_nil @r.parsed_response["attendance"]["registrantCount"]

    end
    
    should "generate valid get session polls" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345/polls",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session_polls("54321","12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
    should "generate valid get session questions" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345/questions",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session_questions("54321","12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]

    end
    
    should "generate valid get session surveys" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions/12345/surveys",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_session_surveys("54321","12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
    should "generate valid get webinar sessions" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/54321/webinars/54321/sessions",:body => '[{"webinarKey":"54321"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_webinar_sessions("54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["webinarKey"]
    end

  end
end
