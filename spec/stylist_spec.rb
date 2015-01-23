require('spec_helper')

describe(Stylist) do

  describe('#name') do
    it('returns a stylist name') do
      test_stylist = Stylist.new(:name => "Cierra", :id => nil)
      expect(test_stylist.name()).to(eq("Cierra"))
    end
  end

  describe('#id') do
    it('returns an id for a stylist') do
      test_stylist = Stylist.new(:name => "Cierra", :id => nil)
      expect(test_stylist.id()).to(eq(nil))
    end
  end

  describe('.all') do
    it('returns all sylists') do
      expect(Stylist.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a stylist to an array of stylists') do
      test_stylist = Stylist.new(:name => "Cierra", :id => nil)
      test_stylist.save()
      expect(Stylist.all()).to(eq([test_stylist]))
    end
  end

  describe("#==") do
    it("is the same name if it has the same name") do
      stylist1 = Stylist.new({:name => "Cierra", :id => nil})
      stylist2 = Stylist.new({:name => "Cierra", :id => nil})
      expect(stylist1).to(eq(stylist2))
    end
  end

  describe(".find") do
    it("returns a stylist by their id number") do
      test_stylist1 = Stylist.new({:name => "Cierra", :id => nil})
      test_stylist1.save()
      test_stylist2 = Stylist.new({:name => "Logan", :id => nil})
      test_stylist2.save()
      expect(Stylist.find(test_stylist2.id())).to(eq(test_stylist2))
    end
  end

  describe("#clients") do
    it("returns an array of clients for that stylist") do
      test_stylist = Stylist.new({:name => "Cierra", :id => nil})
      test_stylist.save()
      test_client = Client.new({:name => "Duane", :id => nil, :stylist_id => test_stylist.id()})
      test_client.save()
      test_client2 = Client.new({:name => "Steve", :id => nil, :stylist_id => test_stylist.id()})
      test_client2.save()
      expect(test_stylist.clients()).to(eq([test_client, test_client2]))
    end
  end

end