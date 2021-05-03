# frozen_string_literal: true

class AvionStudent
  def initialize(name, age)
    @name = name
    @age = age
  end

  def make_project(pl)
    puts "#{@name} is creating a #{pl} project"
  end

  def submit_project
    puts "#{@name} is submitting project"
  end
end

student1 = AvionStudent.new('James', 5)
student1.make_project('javascript')
student1.submit_project
