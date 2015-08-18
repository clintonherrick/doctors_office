require('spec_helper')

describe(Patient) do
  describe('#==') do
    it('is the same patient if it has the same id') do
      patient1 = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      patient2 = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      expect(patient1).to(eq(patient2))
    end
  end

  describe('.all') do
    it('returns an empty list of patients at first') do
      expect(Patient.all()).to(eq([]))
    end
  end

  describe("#name") do
    it("lets you view the name of the patient") do
      test_patient = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      expect(test_patient.name()).to(eq("Clinton"))
    end
  end




end
