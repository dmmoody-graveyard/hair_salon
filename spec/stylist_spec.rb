require('spec_helper')

describe(Stylist) do

  describe('#name') do
    it('returns a stylist name') do
      test_stylist = Stylist.new("Cierra")
      expect(test_stylist.name()).to(eq("Cierra"))
    end
  end

end