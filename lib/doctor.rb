class Doctor
  attr_reader(:name, :id, :specialty)

  define_method(:initalize) do |attributes|
    @name = attributes.fetch(:name)
    @id = attributes.fetch(:id)
    @specialty = attributes.fetch(:specialty)
  end


  define_singleton_method(:all) do
    returned_doctors = DB.exec("SELECT * FROM doctor;")
    doctors = []
    returned_doctors.each() do |doctor|
      name = doctor.fetch("name")
      id = doctor.fetch("id").to_i()
      specialty = doctor.fetch("specialty")
      doctors.push(Doctor.new({:name => name, :id => id, :specialty => specialty}))
    end
    doctors
  end

end
