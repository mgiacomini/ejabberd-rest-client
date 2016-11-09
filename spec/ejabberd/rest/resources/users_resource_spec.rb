RSpec.describe Ejabberd::Rest::Resources::UsersResource, resource_kit: true do
  subject(:resource) { Ejabberd::Rest::Resources::UsersResource }

  it 'register new user' do
    expect(resource).to have_action(:register).that_handles(200).at_path('/api/register').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

  it 'get registered users of a host' do
    expect(resource).to have_action(:registered_users).that_handles(200).at_path('/api/registered_users').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Array)
    end
  end

end