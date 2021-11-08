class Person

  def initialize(age, name = "Unknown", parent_permission = true)
    @id = Random.rand(1..1000)
    @age = age
    @name = name
    @parent_permission = parent_permission
  end

  def id
    @id
  end

  def name
    @name
  end

  def age
    @age
  end

  def name=(value)
    @name = value
  end

  def age=(num)
    @age = num
  end

  def is_of_age?
    if @age >= 18
      true
    else
      false
    end
  end

  def can_use_services?
    if (is_of_age? || @parent_permission)
      true
    else
      false
    end
  end

  private :is_of_age?

end
