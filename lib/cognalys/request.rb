require 'rest_client'
require 'cognalys'

module Cognalys
  # Request objects are used to create fetch
  # objects, which make requests to the server
  # using HTTParty
  class Request

    include RestClient

    def request_verification ( *args )
       return get_call( *args )
    end


    def validate_otp ( *args )
      JSON.parse(verify_with_otp( *args ))
    end

    private

    def build_options( *args )
      return Cognalys.auth.merge!( args[0] )
    end

    def url
      Cognalys::BASE_URI + "otp/"
    end

    def confirm_url
      Cognalys::BASE_URI + "otp/confirm/"
    end

    def get_call( *args )
      RestClient.get url, {:params => build_options( *args ) }
    end

    def verify_with_otp( *args )
      RestClient.get confirm_url, { :params => build_options( *args ) }
    end

  end
end