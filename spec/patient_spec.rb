require('spec_helper')

describe(Patient) do
  describe('#==') do
    it('is the same patient if it has the same id') do
      patient1 = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      patient2 = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      expect(patient1).to(eq(patient2))
    end
  end
end
