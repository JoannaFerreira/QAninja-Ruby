# Ruby é uma linguagem considerada puramente orienta a objeto
#porque no Ruby tudo são objetos

#classe possui atributos e metodos
#caracteristicas e ações

#atributos(caractersticas)Carro(nome, marca, modelo, cor, quantidade de porta)
#metodo(Ações)Ligar, Businar, parar, etc...

class Carro
    # attr_acessor ler e definir valor
    attr_accessor :nome
    def ligar
        puts 'O carro está pronto para iniciar o trajeto'
    end
end

civic = Carro.new #Instancia
#puts civic.class 

civic.nome = 'Civic'

puts civic.nome 
civic.ligar
