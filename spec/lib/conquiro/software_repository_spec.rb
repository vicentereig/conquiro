require 'spec_helper'

describe Conquiro::SoftwareRepository, vcr: {match_requests_on: [:method, :uri]} do
  let(:repo) { described_class.new }

  it "should respond to query" do
    expect(repo).to respond_to(:query)
  end

  it "should find two instances for gasapp"  do
    apps = repo.query(term: 'gasapp')
    expect(apps.size).to eq(2)
  end
end
