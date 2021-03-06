require "./lib/racionales.rb"
require "./lib/gcd.rb"

describe NumerosRacionales do

    before :each do
      @r = NumerosRacionales.new(1,2)
      @r2 = NumerosRacionales.new(-3,2)
    end
    
    describe "# Pruebas de control:" do
      it " - Existe un numerador" do
        @r.a.should eq(1)
      end
      it " - Existe un denominador" do
        @r.b.should eq(2)
      end
      it " - Existe el metodo num() para obtener el numerador" do
        temp = @r.num()
        temp.should eq(1)
      end
      it " - Existe metodo denom() para obtener el denominador" do
        temp = @r.denom()
        temp.should eq(2)
      end
     it " - Simplificar" do
        @r.simplificar.to_s.should eq("1/2")
      end
    end
    
    describe "# Mostrar fraccion:" do
      it " - Se muestra de la forma a/b: a es el numerador; b es el denominador" do
        @r.a.should eq(1)
        @r.b.should eq(2)
        @r.to_s.should eq("1/2")
      end
       it " - Se muestra en formato de coma flotante" do
        temp=@r.to_f
        temp.should eq(0.5)
      end
    end
    
    describe "# Otros metodos:" do
      it " - El valor absoluto quita el signo negativo del racional" do 
        @r2.abs.to_s.should eq("3/2")
      end
      it " - El reciproco de un racional es su inversa" do
        temp=@r.reciprocal
        temp.to_s.should eq("2/1")
      end
      it " - Opuesto: La fraccion se multiplica por (-1)" do
        temp = -@r
        temp.to_s.should eq("-1/2")
      end
    end
    
    describe "# Operaciones entre fracciones:" do
      it " - Se realiza la operacion suma (+)" do
        temp=@r+@r2
        temp.to_s.should eq("-1/1")
      end
      it " - Se realiza la operacion resta (-)" do
        temp=@r-@r2
        temp.to_s.should eq("2/1")
      end
      it " - Se realiza la operacion del producto (*)" do
        temp=@r*@r2
        temp.to_s.should eq("-3/4")
      end
      it " - Se realiza la operacion de la division (/)" do
        temp=@r/@r2
        temp.to_s.should eq("-1/3")
      end
      it " - Operacion de resto (%) "do
        temp = @r%@r2
        temp.to_s.should eq("2/3")
      end
    end
    
    describe "# Comprobar igualdades: "do
      it " - El operador == comprueba si el r1 es igual al r2" do
        temp=@r==@r2
        temp.should eq(false)
      end
      it " - La fracion es menor que otra "do
        temp=@r<@r2
        temp.should eq(false)
      end
      it " - La fracion es mayor que otra "do
        temp=@r>@r2
        temp.should eq(true)
      end
      it " - La fracion es menor o igual que otra "do
        temp=@r<=@r2
        temp.should eq(false)
      end
      it " - La fracion es mayor o igual que otra "do
        temp=@r>=@r2
        temp.should eq(true)
      end
      it " - La fracion es mayor o igual que otra "do
        temp=@r<=>@r2
        temp.should eq(1)
      end     
    end    
    
end
