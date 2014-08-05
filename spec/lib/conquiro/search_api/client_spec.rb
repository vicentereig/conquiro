require 'spec_helper'

describe Conquiro::SearchAPI::Client, vcr: {match_requests_on: [:method, :uri]} do
  let(:client) { described_class.new }
  describe 'when searching for yelp app' do
    it 'should find 50 search results' do
      response = client.query(term: 'yelp', country: 'us', entity: 'software')
      expect(response[:results].size).to eq(50)
    end
  end
end
