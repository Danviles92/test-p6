# = Racionales.rb
#
# Autor::   Elvis Nogueiras
#
# == Practica 6 LPP
#
# == Descripcion :
# Clase encargada de manejar numero racionales y operaciones de suma, resta, multiplicacion y division.
#
# === Metrodos
#
# Definición de la clase racionales compuesta por
# * metodo initialize
# * metodo numerador
# * metodo denominador
# * metodo to_frac
# * metodo suma
# * metodo resta
# * metodo producto
# * metodo division
#

class Racionales
    attr_reader :a, :b
    
    def initialize(a,b)
        @a = a
        @b = b
    end

    def numerador()
        "#{@a}"
    end

    def denominador()
        "#{@b}"
    end

    def to_frac()
        "#{@a}/#{@b}"
    end

    def self.suma(a,b)
        den = a.b.abs * b.b.abs
        num = (a.b.abs * b.a) + (b.b.abs * a.a)
        "#{num}/#{den}"
    end

    def self.resta(a,b)
        den = a.b.abs * b.b.abs
        num = (b.b.abs * a.a) - (a.b.abs * b.a)
        "#{num}/#{den}"
    end

    def self.producto(a,b)
        den = a.b.abs * b.b.abs
        num = (a.a * b.a)
        "#{num}/#{den}"
    end

    def self.division(a,b)
        den = a.b.abs * b.a
        num = (a.a * b.b.abs)
        if num < 0 && den < 0
            den = den.abs
            num = num.abs
        end

        if den < 0
            den = den.abs
            num = -num
        end

        "#{num}/#{den}"
    end
    
end