module GoToWebinar
  module Webinars
    
    def get_historical_webinars(params)
      self.class.get("historicalWebinars", :query => params).parsed_response
    end
    
    def get_upcoming_webinars(params)
      self.class.get("upcomingWebinars", :query => params).parsed_response
    end
    
    def get_webinar(webinar_key)
      self.class.get("webinars/#{webinar_key}").parsed_response
    end
    
    def get_webinar_meeting_times(webinar_key)
      self.class.get("webinars/#{webinar_key}/meetingTimes").parsed_response
    end
    
    def get_webinars()
      self.class.get("webinars").parsed_response
    end
    
  end
end