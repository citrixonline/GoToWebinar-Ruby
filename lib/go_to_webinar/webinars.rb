module GoToWebinar
  module Webinars
    
    def get_historical_webinars(organizer_key, params)
      self.class.get("organizers/#{organizer_key}/historicalWebinars", :query => params).parsed_response
    end
    
    def get_upcoming_webinars(organizer_key, params)
      self.class.get("organizers/#{organizer_key}/upcomingWebinars", :query => params).parsed_response
    end
    
    def get_webinar(organizer_key, webinar_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}").parsed_response
    end
    
    def get_webinar_meeting_times(organizer_key, webinar_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/meetingTimes").parsed_response
    end
    
    def get_webinars(organizer_key)
      self.class.get("organizers/#{organizer_key}/webinars").parsed_response
    end
    
  end
end