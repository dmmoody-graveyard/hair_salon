require('spec_helper')

describe(Client) do
  
  describe('#name') do
    it('returns a client name') do
      test_client = Client.new(:name => "Duane", :id => nil)
      expect(test_client.name()).to(eq("Duane"))
    end
  end

  describe('#id') do
    it('returns a client id') do
      test_client = Client.new(:name => "Duane", :id => nil)
      expect(test_client.id()).to(eq(nil))
    end
  end

  describe('.all') do
    it('returns all clients') do
      expect(Clients.all()).to(eq([]))
    end

end