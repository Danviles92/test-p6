RSpec.describe Gematest do
  it "has a version number" do
    expect(Gematest::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(true).to eq(true)
  end

  describe Racionales do    # Agrupa pruebas
    it "Se debe poder instanciar un racional" do  # Describe una prueba 
      expect(Racionales.new(5,3)).not_to eq(nil)
    end

    it "Se debe poder mostrar el numerador" do  # Describe una prueba 
      a = Racionales.new(7,5)
      expect(a.numerador).to eq("7")
    end

    it "Se debe poder mostrar el denominador" do  # Describe una prueba 
      a = Racionales.new(7,5)
      expect(a.denominador).to eq("5")
    end

    it "Se debe poder escribir un racional en fracion" do  # Describe una prueba 
      a = Racionales.new(7,5)
      expect(a.to_frac).to eq("7/5")
    end

    it "Se debe poder sumar 2 racionales" do  # Describe una prueba 
      a = Racionales.new(7,5) 
      b = Racionales.new(4,2)
      expect(Racionales.suma(a,b)).to eq("34/10")
    end

    it "Se debe poder restar 2 racionales" do  # Describe una prueba 
      a = Racionales.new(7,5)
      b = Racionales.new(4,2)
      expect(Racionales.resta(a,b)).to eq("-6/10")
    end

    it "Se debe poder multiplicar 2 racionales" do  # Describe una prueba 
      a = Racionales.new(7,5)
      b = Racionales.new(4,2)
      expect(Racionales.producto(a,b)).to eq("28/10")
    end

    it "Se debe poder dividir 2 racionales" do  # Describe una prueba 
      a = Racionales.new(7,5)
      b = Racionales.new(4,2)
      expect(Racionales.division(a,b)).to eq("14/20")
    end
    
   end

   describe Complejos do    # Agrupa pruebas
    it "Se debe poder instanciar un numero complejo" do  # Describe una prueba 
      expect(Complejos.new(5,3)).not_to eq(nil)
    end

    it "Se debe poder mostrar la parte entera" do  # Describe una prueba 
      a = Complejos.new(7,5)
      expect(a.entero).to eq("7")
    end

    it "Se debe poder mostrar la parte imaginaria" do  # Describe una prueba 
      a = Complejos.new(7,5)
      expect(a.imaginario).to eq("5i")
    end

    it "Se debe poder escribir un numero complejo" do  # Describe una prueba 
      a = Complejos.new(7,5)
      expect(a.to_s).to eq("(7 + 5i)")
    end

    it "Se debe poder sumar 2 Complejos" do  # Describe una prueba 
      a = Complejos.new(7,5) 
      b = Complejos.new(4,2)
      expect(Complejos.suma(a,b)).to eq("(11 + 7i)")
    end

    it "Se debe poder restar 2 Complejos" do  # Describe una prueba 
      a = Complejos.new(7,5)
      b = Complejos.new(4,2)
      expect(Complejos.resta(a,b)).to eq("(3 + 3i)")
    end

    it "Se debe poder multiplicar 2 Complejos" do  # Describe una prueba 
      a = Complejos.new(7,5)
      b = Complejos.new(4,2)
      expect(Complejos.producto(a,b)).to eq("(18 + 34i)")
    end

    it "Se debe poder dividir 2 Complejos" do  # Describe una prueba 
      a = Complejos.new(7,5)
      b = Complejos.new(4,2)
      expect(Complejos.division(a,b)).to eq("((38 + 6i) / (20))")
    end
    
   end

end
