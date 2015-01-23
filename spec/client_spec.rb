require('spec_helper')

describe(Client) do
	
  describe('#name') do
    it('returns a client name') do
      test_client = Client.net(:name => "Duane", :id => nil)
      expect(test_client.name()).to(eq("Duane"))
    end
  end

end