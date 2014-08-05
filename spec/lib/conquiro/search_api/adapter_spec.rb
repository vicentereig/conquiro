require 'spec_helper'

describe Conquiro::SearchAPI::Adapter, vcr: {match_requests_on: [:method, :uri]} do
  let(:adapter) { described_class.new }
  let(:criteria) { Conquiro::Criteria.new('yelp', 'us', 'software') }
  let(:results) { adapter.query(criteria) }
  let(:first_result) { results.first }
  let(:result_types) { results.map(&:class).uniq }
  describe 'when searching for yelp app' do
    it 'should find 50 search results' do
      expect(results.size).to eq(50)
    end

    it 'should return a Conquiro::Software entity' do
      expect(result_types).to eq([Conquiro::Software])
    end

    it 'should return valid entities' do
      expect(first_result.seller_name).to eq('Yelp, Inc.')
      expect(first_result.track_name).to eq('Yelp')
    end
  end
end
