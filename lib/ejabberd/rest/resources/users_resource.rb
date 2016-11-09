module Ejabberd
  module Rest
    module Resources
      class UsersResource < ResourceKit::Resource

        resources do
          action :register, 'POST /api/register' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :registered_users, 'POST /api/registered_users' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end
        end

      end
    end
  end
end