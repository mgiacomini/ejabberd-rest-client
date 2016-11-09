module Ejabberd
  module Rest
    module Resources
      class MucResource < ResourceKit::Resource

        resources do
          action :create_room, 'POST /api/create_room' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :create_room_with_options, 'POST /api/create_room_with_options' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :destroy_room, 'POST /api/destroy_room' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| true }
          end

          action :room_affiliations, 'POST /api/get_room_affiliations' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end

          action :room_occupants, 'POST /api/get_room_occupants' do
            body { |object| JSON.generate(object) }
            handler(200) { |response| JSON.parse(response.body) }
          end
        end

      end
    end
  end
end