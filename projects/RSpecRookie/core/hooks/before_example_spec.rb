require 'rspec/expectations'
require_relative 'thing'

RSpec.describe Thing do

  # Eseguito prima di ogni test.
  before(:example) do
    @thing = Thing.new
  end

  describe 'initialized in before(:example)' do

    it 'has 0 widgets' do
      expect(@thing.widgets.count).to eq(0)
    end

    it 'can accept new widgets' do
      @thing.widgets << Object.new
    end

    it 'does not share state across examples' do
      expect(@thing.widgets.count).to eq(0)
    end

  end

end
