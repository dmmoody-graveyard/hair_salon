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

end