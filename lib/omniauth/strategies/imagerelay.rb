require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class ImageRelay < OmniAuth::Strategies::OAuth2

      option :name, 'imagerelay'

      option :client_options, {
        :site => 'https://launch.imagerelay.com',
        :authorize_url => '/oauth/authorize',
        :token_url => '/oauth/token'
      }

      uid { raw_info.parsed['id'] }

      info do
        {
            'id' => raw_info.parsed['id'],
            'email' => raw_info.parsed['email'],
            'first_name' => raw_info.parsed['first_name'],
            'last_name' => raw_info.parsed['last_name'],
            'name' => [raw_info.parsed['first_name'], raw_info.parsed['last_name']].join(' ').strip
        }
      end

      def raw_info
        return @raw_info if @raw_info
        (access_token.options || {}).merge!({:header_format => 'OAuth %s', :parse => :json})
        @raw_info = access_token.get('/api/v2/users/me.json')
      end

    end
  end
end

OmniAuth.config.add_camelization 'imagerelay', 'ImageRelay'
