RSpec.describe Ejabberd::Rest::Resources::UsersResource, resource_kit: true do
  subject(:resource) { Ejabberd::Rest::Resources::UsersResource }

  it 'register new user' do
    expect(resource).to have_action(:register).that_handles(200).at_path('/api/register').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

  it 'get registered users of a host' do
    expect(resource).to have_action(:registered).that_handles(200).at_path('/api/registered_users').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Array)
    end
  end

  it 'disconnect user’s active sessions' do
    expect(resource).to have_action(:kick_user).that_handles(200).at_path('/api/kick_user').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Integer)
    end
  end

  it 'get the list of rooms where this user is occupant' do
    expect(resource).to have_action(:rooms).that_handles(200).at_path('/api/get_user_rooms').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Array)
    end
  end

  it 'ban an account: kick sessions and set random password' do
    expect(resource).to have_action(:ban_account).that_handles(200).at_path('/api/ban_account').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

end