require 'spec_helper'

describe ::Ejabberd::Rest::Client do
  it 'has a version number' do
    expect(Ejabberd::Rest::Client::VERSION).not_to be nil
  end
end
