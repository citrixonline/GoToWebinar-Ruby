module GoToWebinar
  module Sessions
    
    def get_organizer_sessions()
      self.class.get("sessions")
    end
    
    def get_session(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}")
    end
    
    def get_session_attendees(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/attendees")
    end
    
    def get_session_performance(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/performance")
    end
    
    def get_session_polls(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/polls")
    end
    
    def get_session_questions(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/questions")
    end
    
    def get_session_surveys(webinar_key, session_key)
      self.class.get("webinars/#{webinar_key}/sessions/#{session_key}/surveys")
    end
    
    def get_webinar_sessions(webinar_key)
      self.class.get("webinars/#{webinar_key}/sessions")
    end
    
  end
end