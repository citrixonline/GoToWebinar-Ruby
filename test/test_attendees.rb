require 'helper'

class AttendeesTest < Test::Unit::TestCase

  context "methods" do

    setup do
      @c = GoToWebinar::Client.new("54321", "12345")
    end

    should "generate valid get attendee" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/12345/webinars/12345/sessions/12345/attendees/54321",:body => '{"registrantKey": "54321"}', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_attendee("12345","12345","54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Hash)
      assert_not_nil @r.parsed_response["registrantKey"]
      
    end
    
    should "generate valid attendee poll answers" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/12345/webinars/12345/sessions/12345/attendees/54321/polls",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_attendee_poll_answers("12345","12345","54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
    should "generate valid get attendee questions" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/12345/webinars/12345/sessions/12345/attendees/54321/questions",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_attendee_questions("12345","12345","54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
    should "generate valid get attendee survey answers" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/12345/webinars/12345/sessions/12345/attendees/54321/surveys",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_attendee_survey_answers("12345","12345", "54321")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
    should "generate valid get attendees for all webinar sessions" do
      FakeWeb.register_uri(:get, "https://api.getgo.com/G2W/rest/organizers/12345/webinars/12345/attendees",:body => '[{"question":"something"}]', :content_type => "application/json", :status => ["200", "OK"])
      @r = @c.get_attendees_for_all_webinar_sessions("12345")
      assert_not_nil @r
      assert @r.parsed_response.is_a?(Array)
      assert_not_nil @r.parsed_response.first["question"]
    end
    
  end
end
