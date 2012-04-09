module GoToWebinar
  module Registrants
    
    def create_registrant(webinar_key, params)
      self.class.post("webinars/#{webinar_key}/registrants", :body => params.to_json)
    end
    
    def get_registrant(webinar_key, registrant_key)
      self.class.get("webinars/#{webinar_key}/registrants/#{registrant_key}")
    end
    
    def get_registrants(webinar_key)
      self.class.get("webinars/#{webinar_key}/registrants")
    end
    
    def get_registrant_fields(webinar_key)
      self.class.get("webinars/#{webinar_key}/registrants/fields")
    end
    
  end
end