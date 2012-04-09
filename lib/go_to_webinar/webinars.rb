module GoToWebinar
  module Webinars
    
    def get_historical_webinars(params = {})
      self.class.get("historicalWebinars", :query => params)
    end
    
    def get_upcoming_webinars(params = {})
      self.class.get("upcomingWebinars", :query => params)
    end
    
    def get_webinar(webinar_key)
      self.class.get("webinars/#{webinar_key}")
    end
    
    def get_webinar_meeting_times(webinar_key)
      self.class.get("webinars/#{webinar_key}/meetingTimes")
    end
    
    def get_webinars()
      self.class.get("webinars")
    end
    
  end
end