class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def ligar 
        puts "#{nome} está pronto para iniciar"
    end

    def buzinar 
        puts 'Beep! Beep!'
    end
end


class Carro < Veiculo
    def dirigir 
        puts  "#{nome} está pronto o trajeto."
    end
end

class Moto < Veiculo
    def pilotar
        puts  "#{nome} está pronto o trajeto."
    end
end

civic = Carro.new('Civic', 'Honda', 'SI')
civic.ligar
civic.buzinar
civic.dirigir

lancer =  Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.ligar
lancer.buzinar
lancer.dirigir 

motoca =  Moto.new('Motoca', 'Bis', 'EVOI')
motoca.ligar
motoca.buzinar
motoca.pilotar 
