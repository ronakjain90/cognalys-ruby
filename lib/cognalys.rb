require "cognalys/version"
require "cognalys/constants"
require "cognalys/request"

module Cognalys
  class << self
    attr_accessor :auth
  end

  def self.setup(key_id, key_secret)
    self.auth = { app_id: key_id, access_token: key_secret }
  end

end
