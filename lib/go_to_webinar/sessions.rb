module GoToWebinar
  module Sessions
    
    def get_organizer_sessions()
      self.class.get("sessions").parsed_response
    end
    
    def get_session(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}").parsed_response
    end
    
    def get_session_attendees(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees").parsed_response
    end
    
    def get_session_performance(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/performance").parsed_response
    end
    
    def get_session_polls(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/polls").parsed_response
    end
    
    def get_session_questions(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/questions").parsed_response
    end
    
    def get_session_surveys(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/surveys").parsed_response
    end
    
    def get_webinar_sessions(webinar_key)
      self.class.get("webinars/#{webinar_key}/sessions").parsed_response
    end
    
  end
end