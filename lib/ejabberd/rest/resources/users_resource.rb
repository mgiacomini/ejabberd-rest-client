module Ejabberd
  module Rest
    module Resources
      class UsersResource < ResourceKit::Resource

        resources do
          default_handler(401) { raise ::Ejabberd::NotAuthorizedError, 'This request requires authentication' }

          action :register, 'POST /api/register' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :registered, 'POST /api/registered_users' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end

          action :kick_user, 'POST /api/kick_user' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body).with_indifferent_access(:num_resources).to_int }
          end

          action :rooms, 'POST /api/get_user_rooms' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end

          action :ban_account, 'POST /api/ban_account' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :sessions_info, 'POST /api/user_sessions_info' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end
        end

      end
    end
  end
end