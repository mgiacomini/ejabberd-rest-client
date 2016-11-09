require 'base64'

module Ejabberd
  module Rest
    class Client
      VERSION = "0.1.0"

      attr_reader :access_token

      def initialize(options = {})
        @access_token = Base64.encode64 "#{options.with_indifferent_access[:jid]}:#{options.with_indifferent_access[:password]}"
        @ejabberd_api = options.with_indifferent_access[:ejabberd_api]
        @logger = options.with_indifferent_access[:logger]
      end

      def connection
        Faraday.new(connection_options) do |req|
          req.request :multipart
          req.request :url_encoded
          req.use(Faraday::Response::Logger, @logger) unless @logger.nil?
          req.adapter :net_http_persistent
        end
      end

      def self.resources
        {
            #bitstreams: ::Dspace::Resources::BitstreamResource,
            #items: ::Dspace::Resources::ItemResource,
            #collections: ::Dspace::Resources::CollectionResource,
            #communities: ::Dspace::Resources::CommunityResource,
            status: Ejabberd::Rest::Resources::StatusResource
            #authentication: ::Dspace::Resources::AuthenticationResource
        }
      end

      def resources
        @resources ||= {}
      end

      def is_running?
        resource(:status).running?
      end

      def method_missing(name, *args, &block)
        resource(name) || super
      end

      private

      def resource(name)
        if self.class.resources.keys.include?(name)
          resources[name] ||= self.class.resources[name].new(connection: connection)
          resources[name]
        end
      end

      def connection_options
        {
            url: @ejabberd_api,
            ssl: {
                verify: false
            },
            headers: {
                content_type: 'application/json',
                accept: 'application/json',
                'Authorization' => build_basic_auth_token.to_s,
                user_agent: "ejabberd-rest-client #{::Ejabberd::Rest::Client::VERSION}"
            }
        }
      end

      def build_basic_auth_token
        'Basic ' + access_token.to_s
      end

    end
  end
end
