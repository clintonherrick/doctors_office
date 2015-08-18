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

  describe('#id') do
    it('sets the patient id when you save it') do
      test_patient = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      test_patient.save()
      expect(test_patient.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('#save') do
    it('adds a patient to the array of saved patients') do
      test_patient = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      test_patient.save()
      expect(Patient.all()).to(eq([test_patient]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved patients") do
      Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      Patient.clear()
      expect(Patient.all()).to(eq([]))
    end
  end

  describe('#doctor_id') do
    it('lets you read the doctor id of the patient') do
      test_patient = Patient.new({:name => "Clinton", :birthdate => '1990-01-01', :doctor_id => 1, :id => nil})
      expect(test_patient.doctor_id()).to(eq(1))
    end
  end
end
