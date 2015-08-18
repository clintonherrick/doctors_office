class Patient
  attr_reader(:name, :birthdate, :doctor_id, :id)
    define_method(:initialize) do |attributes|
      @name = attributes.fetch(:name)
      @birthdate = attributes.fetch(:birthdate)
      @doctor_id = attributes.fetch(:doctor_id)
      @id = attributes.fetch(:id)
    end

  define_method(:==) do |another_patient|
    self.id().==another_patient.id()
  end

  define_singleton_method(:all) do
    returned_patient = DB.exec("SELECT * FROM patient;")
    patient = []
    returned_patient.each() do |patient|
      name = patient.fetch("name")
      birthdate = patient.fetch("birthdate")
      doctor_id = patient.fetch("doctor_id")
      id = patient.fetch("id").to_i()
      patient.push(Patient.new({:name => name, :birthdate => birthdate, :doctor_id => doctor_id, :id => id}))
    end
    patient
  end


  define_method(:save) do
    result = DB.exec("INSERT INTO patient (name, birthdate, doctor_id)VALUES ('#{@name}', '#{@birthdate}', '#{@doctor_id}') RETURNING id;")
    @id  = result.first().fetch("id").to_i()
  end

end
