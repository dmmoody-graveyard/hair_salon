require('spec_helper')

describe(Stylist) do

  describe('#name') do
    it('returns a stylist name') do
      test_stylist = Stylist.new(:name => "Cierra", :id => nil)
      expect(test_stylist.name()).to(eq("Cierra"))
    end
  end

end