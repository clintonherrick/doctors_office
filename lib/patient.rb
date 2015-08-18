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



end
