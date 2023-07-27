# Prueba - Introducción a la programación con Ruby

# Requerimientos

# 1. Identificar las posibles subclases que aparecen en el código a refactorizar. Cada una de ella contendrá los métodos correspondientes, talk e introduce.
# 2. A partir de la refactorización del código se debe generar herencia de ancestros aplicando la sintaxis de Ruby, esto para la subclases.
# 3. El método introduce al imprimir el mensaje muestra el nombre y apellido haciendo uso de interpolación de variables de instancia.
# 4. Al generar las instancias de cada objeto, se muestra un mensaje en función del método que sea invocado.

class Person
  attr_accessor :first_name, :last_name, :age

  def initialize(first, last, age)
    @first_name = first
    @last_name = last
    @age = age
  end

  def birthday
    @age += 1
  end

  def talk; end

  def introduce; end
end

class Student < Person
  def talk
    puts 'Aquí es la clase de programación con Ruby?'
  end

  def introduce
    puts "Hola profesor. Mi nombre es #{first_name} #{last_name}."
  end
end

class Teacher < Person
  def talk
    puts 'Bienvenidos a la clase de programación con Ruby!'
  end

  def introduce
    puts "Hola alumnos. Mi nombre es #{first_name} #{last_name}."
  end
end

class Parent < Person
  def talk
    puts 'Aquí es la reunión de apoderados?'
  end

  def introduce
    puts "Hola. Soy uno de los apoderados. Mi nombre es #{first_name} #{last_name}."
  end
end

fernando = Student.new('Fernando', 'Contreras', 23)
puts fernando.talk
puts fernando.introduce

sebastian = Teacher.new('Sebastian', 'Alegria', 43)
puts sebastian.talk
puts sebastian.introduce

cecilia = Parent.new('Cecilia', 'Miranda', 33)
puts cecilia.talk
puts cecilia.introduce
