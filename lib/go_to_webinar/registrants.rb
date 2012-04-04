module GoToWebinar
  module Registrants
    
    def create_registrant(organizer_key, webinar_key, params)
      self.class.post("organizers/#{organizer_key}/webinars/#{webinar_key}/registrants", :body => params).parsed_response
    end
    
    def get_registrant(organizer_key, webinar_key, registrant_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/registrants/#{registrant_key}").parsed_response
    end
    
    def get_registrants(organizer_key, webinar_key, params)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/registrants").parsed_response
    end
    
    def get_registrant_fields(organizer_key, webinar_key)
      self.class.get("organizers/#{organizer_key}/webinars/#{webinar_key}/registrants/fields").parsed_response
    end
    
  end
end