module GoToWebinar
  module Attendees
    
    def get_attendee(webinar_key, session_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}").parsed_response
    end
    
    def get_attendee_poll_answers(webinar_key, session_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/polls").parsed_response
    end
    
    def get_attendee_questions(webinar_key, session_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/questions").parsed_response
    end
    
    def get_attendee_survey_answers(webinar_key, session_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/surveys").parsed_response
    end
    
    def get_attendees_for_all_webinar_sessions(webinar_key)
      self.class.get("webinars/#{webinar_key}/attendees").parsed_response
    end
    
  end
end
