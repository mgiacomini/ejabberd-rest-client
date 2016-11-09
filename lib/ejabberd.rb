require 'forwardable'
require 'json'
require 'resource_kit'
require 'faraday'
require 'active_support/all'

require_relative 'ejabberd/rest/client'
require_relative 'ejabberd/rest/resources/status_resource'
require_relative 'ejabberd/rest/resources/users_resource'

module Ejabberd

  class NotAuthorizedError < StandardError; end
  class InvalidTokenError < StandardError; end
  class InvalidCredentialsError < StandardError; end

end