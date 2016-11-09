RSpec.describe Ejabberd::Rest::Resources::StatusResource, resource_kit: true do
  subject(:resource) { Ejabberd::Rest::Resources::StatusResource }

  it 'get service status' do
    expect(resource).to have_action(:running?).that_handles(200, 201).at_path('/api/status').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

end