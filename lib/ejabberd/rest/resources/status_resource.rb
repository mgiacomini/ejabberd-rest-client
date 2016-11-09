module Ejabberd
  module Rest
    module Resources
      class StatusResource < ResourceKit::Resource

        resources do
          action :running?, 'POST /api/status' do
            # status resource need send empty json string, otherwise returns error
            body { |object| JSON.generate({}) }
            handler(200, 201) { |response| true }
          end
        end

      end
    end
  end
end