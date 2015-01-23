require('spec_helper')

describe(Client) do
  
  describe('#name') do
    it('returns a client name') do
      test_client = Client.new(:name => "Duane", :id => nil, :stylist_id => 1)
      expect(test_client.name()).to(eq("Duane"))
    end
  end

  describe('#stylist_id') do
    it('returns a stylist id') do
      test_client = Client.new(:name => "Duane", :id => nil, :stylist_id => 1)
      expect(test_client.stylist_id()).to(eq(1))
    end
  end

  describe('.all') do
    it('returns all clients') do
      expect(Client.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a client to an array of clients') do
      test_client = Client.new(:name => "Duane", :id => nil, :stylist_id => 1)
      test_client.save()
      expect(Client.all()).to(eq([test_client]))
    end
  end

  describe("#==") do
    it("is the same client if it has the same client and stylist_id ID") do
      client1 = Client.new({:name => "Duane", :id => nil, :stylist_id => 1})
      client2 = Client.new({:name => "Duane", :id => nil, :stylist_id => 1})
      expect(client1).to(eq(client2))
    end
  end

end