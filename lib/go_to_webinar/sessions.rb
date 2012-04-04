module GoToWebinar
  module Sessions
    
    def get_organizer_sessions(organizer_key)
      self.class.get("organizers/#{organizer_key}/sessions").parsed_response
    end
    
    def get_session(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}").parsed_response
    end
    
    def get_session_attendees(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/attendees").parsed_response
    end
    
    def get_session_performance(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/performance").parsed_response
    end
    
    def get_session_polls(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/polls").parsed_response
    end
    
    def get_session_questions(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/questions").parsed_response
    end
    
    def get_session_surveys(organizer_key, webinar_key, session_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/surveys").parsed_response
    end
    
    def get_webinar_sessions(organizer_key, webinar_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions").parsed_response
    end
    
  end
end