class Appointment
  attr_reader :doctor,:patient
  attr_accessor :date
  @@all=[]
  def initialize(date,doctor,patient)
    @date=date
    @doctor=doctor
    @patient=patient

  end


  def self.all
    @@all<< self
  end
end
