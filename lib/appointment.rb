class Appointment
  attr_reader :doctor,:patient,:date
  @@all=[]
  def initialize(patient,doctor,date)
    @date=date
    @doctor=doctor
    @patient=patient
@@all<<self
  end


  def self.all
    @@all
  end
end
