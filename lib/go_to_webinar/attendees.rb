module GoToWebinar
  module Attendees
    
    def get_attendee(organizer_key, webinar_key, session_key, registrant_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}").parsed_response
    end
    
    def get_attendee_poll_answers(organizer_key, webinar_key, session_key, registrant_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/polls").parsed_response
    end
    
    def get_attendee_questions(organizer_key, webinar_key, session_key, registrant_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/questions").parsed_response
    end
    
    def get_attendee_survey_answers(organizer_key, webinar_key, session_key, registrant_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/sessions/#{session_key}/attendees/#{registrant_key}/surveys").parsed_response
    end
    
    def get_attendees_for_all_webinar_sessions(organizer_key, webinar_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/attendees").parsed_response
    end
    
  end
end
