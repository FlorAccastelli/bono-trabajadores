class TrabajadorNeonSac
  attr_accessor :codigo, :nombre, :apellido, :sueldo_base, :monto_ventas_promedio, :cantidad_miembros_tipo

  def initialize(codigo, nombre, apellido, sueldo_base)
    @codigo = codigo
    @nombre = nombre
    @apellido = apellido
    @sueldo_base = sueldo_base
  end

  def calcular_bono
  end
end

class TrabajadorPlatino < TrabajadorNeonSac
  def calcular_bono
    @bono_platino = cantidad_miembros_tipo * 0.30 + monto_ventas_promedio * cantidad_miembros_tipo
  end
end

class TrabajadorOro < TrabajadorNeonSac
  def calcular_bono
    @bono_oro = cantidad_miembros_tipo * 0.08 + monto_ventas_promedio * 10 + 500
  end
end

class TrabajadorPlata < TrabajadorNeonSac
  def calcular_bono
    @bono_plata = (100 + monto_ventas_promedio * 5) + cantidad_miembros_tipo
  end
end

trabajador1 = TrabajadorPlatino.new("001", "Juan", "Perez", 2000)
trabajador1.monto_ventas_promedio = 1500
trabajador1.cantidad_miembros_tipo = 5

trabajador2 = TrabajadorOro.new("002", "Maria", "Lopez", 1800)
trabajador2.monto_ventas_promedio = 2000
trabajador2.cantidad_miembros_tipo = 8

trabajador3 = TrabajadorPlata.new("003", "Pedro", "Gomez", 1700)
trabajador3.monto_ventas_promedio = 1000
trabajador3.cantidad_miembros_tipo = 10

trabajadores = [trabajador1, trabajador2, trabajador3]
total_bonos = trabajadores.sum { |trabajador| trabajador.calcular_bono }
promedio_bonos = total_bonos / trabajadores.size

puts "Total de bonos a pagar: #{total_bonos}"
puts "Bono de trabajador Platino: #{trabajador1.calcular_bono}"
puts "Bono de trabajador Oro: #{trabajador2.calcular_bono}"
puts "Bono de trabajador Plata: #{trabajador3.calcular_bono}"
puts "Promedio general de bonos: #{promedio_bonos}"

class TrabajadorOro < TrabajadorNeonSac
  def initialize(codigo, nombre, apellido, sueldo_base, bono_oro)
    super(codigo, nombre, apellido, sueldo_base)
    @bono_oro = bono_oro
    bono_oro = cantidad_miembros_oro * 0.08 + monto_ventas_promedio * 10 + 500
  end

end

class TrabajadorPlata < TrabajadorNeonSac
  def initialize(codigo, nombre, apellido, sueldo_base, bono_plata)
    super(codigo, nombre, apellido, sueldo_base)
    @bono_plata = bono_plata
    bono_plata = (100 + monto_ventas_promedio * 5) + cantidad_miembros_plata
  end

end

trabajador1 = TrabajadorNeonSac.new("")
