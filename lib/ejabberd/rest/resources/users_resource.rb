module Ejabberd
  module Rest
    module Resources
      class UsersResource < ResourceKit::Resource

        resources do
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
        end

      end
    end
  end
end