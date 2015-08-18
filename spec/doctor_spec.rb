require('spec_helper')

describe(Doctor) do
  describe(".all") do
    it("starts of with no lists") do
    expect(Doctor.all()).to(eq([]))
    end
  end





end
