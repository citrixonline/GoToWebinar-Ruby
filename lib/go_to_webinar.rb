require "httparty"
require 'multi_json'

require "go_to_webinar/version"
require "go_to_webinar/webinars"
require "go_to_webinar/registrants"
require "go_to_webinar/attendees"
require "go_to_webinar/sessions"

module GoToWebinar
  class Client
    
    include HTTParty
    format :json

    include GoToWebinar::Webinars
    include GoToWebinar::Registrants
    include GoToWebinar::Attendees
    include GoToWebinar::Sessions
    
    attr_accessor :access_token
    attr_accessor :organizer_key
    
    def initialize(access_token, organizer_key, extra_params = {})
      
      # the access token from oauth 
      @access_token = access_token
      @organizer_key = organizer_key
      
      @default_params = {
        :base_uri => "https://api.citrixonline.com/G2W/rest/organizers/#{@organizer_key}/",
        :headers => {
          "Content-type" => "application/json",
          "Accept" => "application/json",
          "Authorization" => "OAuth oauth_token=#{@access_token}" 
        }
      }
      
      @default_params = @default_params.merge(extra_params).freeze
      self.class.default_options = self.class.default_options.merge(@default_params).freeze
    end
    
  end

end
