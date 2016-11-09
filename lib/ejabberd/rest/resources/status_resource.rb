module Ejabberd
  module Rest
    module Resources
      class StatusResource < ResourceKit::Resource

        resources do
          action :running?, 'POST /api/status' do
            handler(200, 201) { |response| true }
          end
        end

      end
    end
  end
end