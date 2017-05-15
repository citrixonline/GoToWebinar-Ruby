module GoToWebinar
  module Attendees
    
    def get_attendee(webinar_key, session_key, registrant_key)
      self.class.get("/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}")
    end
    
    def get_attendee_poll_answers(webinar_key, session_key, registrant_key)
      self.class.get("/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/polls")
    end
    
    def get_attendee_questions(webinar_key, session_key, registrant_key)
      self.class.get("/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/questions")
    end
    
    def get_attendee_survey_answers(webinar_key, session_key, registrant_key)
      self.class.get("/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/surveys")
    end
    
    def get_attendees_for_all_webinar_sessions(webinar_key)
      self.class.get("/webinars/#{webinar_key}/attendees")
    end
    
  end
end
