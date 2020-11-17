# = Complejos.rb
#
# Autor::   Elvis Nogueiras
#
# == Practica 6 LPP
#
# == Descripcion :
# Clase encargada de manejar numero complejos y operaciones de suma, resta, multiplicacion y division.
#
# === Clase Complejos
#
# Definición de la clase complejos compuesta por
# * metodo initialize
# * metodo to_s
# * metodo entero
# * metodo imaginario
# * metodo suma
# * metodo resta
# * metodo producto
# * metodo division
#

class Complejos
    attr_reader :r, :i
    
    def initialize(r, i)
        @r = r
        @i = i
    end  

    def to_s
        num_signo_imaginario = i >= 0 ? "+ #{i}" : "- #{-i}"
        "(#{r} #{num_signo_imaginario}i)"
    end

    def entero
        "#{@r}"
    end

    def imaginario
        "#{@i}i"
    end

    def self.suma(complejo_a, complejo_b)
        num_signo_imaginario = complejo_a.i + complejo_b.i
        num_signo_imaginario = num_signo_imaginario >= 0 ? "+ #{num_signo_imaginario}" : "- #{-num_signo_imaginario}"
        "(#{complejo_a.r + complejo_b.r} #{num_signo_imaginario}i)"
    end

    def self.resta(complejo_a, complejo_b)
        num_signo_imaginario = complejo_a.i - complejo_b.i
        num_signo_imaginario = num_signo_imaginario >= 0 ? "+ #{num_signo_imaginario}" : "- #{-num_signo_imaginario}"
        "(#{complejo_a.r - complejo_b.r} #{num_signo_imaginario}i)"
    end

    def self.producto(complejo_a, complejo_b)

        enteros = (complejo_a.r * complejo_b.r) + -(complejo_a.i * complejo_b.i)
        imaginarios = (complejo_a.r * complejo_b.i) + (complejo_a.i * complejo_b.r)

        if imaginarios == 0
            "(#{enteros})"
        else
            imaginarios = imaginarios >= 0 ? "+ #{imaginarios}" : "- #{-imaginarios}"
            "(#{enteros} #{imaginarios}i)"
        end
    end

    def self.division(complejo_a, complejo_b)

        #3 - i = 3 - i   . -1 -i  = - 3 -3i +i +i^2  =  -4 -2i/2 =  -2 - i
        #-1 +i   -1 + i    -1 -i     (-1)^2 - i^2

        complejo_inverso = Complejos.new(complejo_b.r, -complejo_b.i)
        numerador = producto(complejo_a, complejo_inverso)
        denominador = producto(complejo_b, complejo_inverso)

        #if (numerador.entero % denominador.entera == 0) && (numerador.imaginarios % denominador.enteros == 0)
        #    numerador.enteros = numerador.enteros / denominador.enteros 
        #    numerador.imaginarios = numerador.imaginarios / denominador.enteros
        #    numerador.imaginarios = numerador.imaginarios >= 0 ? "+ #{numerador.imaginarios}" : "- #{-numerador.imaginarios}"
        #    "(#{numerador.enteros}  #{denominador.imaginarios})"
        #else

        #enteros = (complejo_a.r * complejo_b.r) + -(complejo_a.i * complejo_b.i)
        #imaginarios = (complejo_a.r * complejo_b.i) + (complejo_a.i * complejo_b.r)
        
        #imaginarios = imaginarios >= 0 ? "+ #{imaginarios}" : "- #{-imaginarios}"
        "(#{numerador} / #{denominador})"
        #end

    end

end