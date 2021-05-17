require 'bookmark'
RSpec.describe Bookmark do
  describe "#all" do 
    it 'returns a list of bookmark sites' do
      expect(described_class.all).to include "http://www.makersacademy.com"
      expect(described_class.all).to include "http://www.destroyallsoftware.com"
      expect(described_class.all).to include "http://www.google.com"
    end
  end
end