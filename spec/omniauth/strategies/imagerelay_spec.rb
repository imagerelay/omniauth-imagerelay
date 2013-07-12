require 'spec_helper'
require 'omniauth-imagerelay'

describe OmniAuth::Strategies::ImageRelay do
  subject do
    strategy = OmniAuth::Strategies::ImageRelay.new(nil, @options || {})
    strategy.stub(:session) { {} }
    strategy
  end

  it_should_behave_like 'an oauth2 strategy'

  describe '#client' do
    it 'should have the correct imagerelay site' do
      subject.client.site.should eq('https://launch.imagerelay.com')
    end

    it 'should have the correct authorization url' do
      subject.client.options[:authorize_url].should eq('/oauth/authorize')
    end

    it 'should have the correct token url' do
      subject.client.options[:token_url].should eq('/oauth/token')
    end
  end

  describe '#callback_path' do
    it 'should have the correct callback path' do
      subject.callback_path.should eq('/auth/imagerelay/callback')
    end
  end
end
