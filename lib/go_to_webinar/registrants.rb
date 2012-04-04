module GoToWebinar
  module Registrants
    
    def create_registrant(webinar_key, params)
      self.class.post("webinars/#{webinar_key}/registrants", :body => params).parsed_response
    end
    
    def get_registrant(webinar_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/registrants/#{registrant_key}").parsed_response
    end
    
    def get_registrants(webinar_key, params)
      self.class.get("webinars/#{webinar_key}/registrants").parsed_response
    end
    
    def get_registrant_fields(webinar_key)
      self.class.get("webinars/#{webinar_key}/registrants/fields").parsed_response
    end
    
  end
end