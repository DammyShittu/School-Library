class Person
  def initialize(age, name = 'Unknown', parent_permission: true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  def of_age?
    @age >= 18
  end

  def can_use_services?
    if of_age? || @parent_permission
      true
    else
      false
    end
  end

  private :of_age?
end
