RSpec.describe Ejabberd::Rest::Resources::MucResource, resource_kit: true do
  subject(:resource) { Ejabberd::Rest::Resources::MucResource }

  it 'create a MUC room name@service in host' do
    expect(resource).to have_action(:create_room).that_handles(200).at_path('/api/create_room').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

  it 'create a MUC room name@service in host with given options' do
    expect(resource).to have_action(:create_room_with_options).that_handles(200).at_path('/api/create_room_with_options').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

  it 'destroy a MUC room' do
    expect(resource).to have_action(:destroy_room).that_handles(200).at_path('/api/destroy_room').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(BooleanMatcher)
    end
  end

  it 'get the list of affiliations of a MUC room' do
    expect(resource).to have_action(:room_affiliations).that_handles(200).at_path('/api/get_room_affiliations').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Array)
    end
  end

  it 'get the list of occupants of a MUC room' do
    expect(resource).to have_action(:room_occupants).that_handles(200).at_path('/api/get_room_occupants').with_verb(:post) do |handled|
      expect(handled).to be_kind_of(Array)
    end
  end

end