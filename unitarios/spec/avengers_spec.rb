class AvengerHeadQuarter
    attr_accessor :list
    
    def initialize
        self.list = []
    end

    def put (avenger)
        self.list.push(avenger)
    end
end

# TDD (Desenvolvimento guiado por testes)
describe AvengerHeadQuarter do
    
    it ' devo adicionar um vingador 'do
        hq = AvengerHeadQuarter.new
        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
    
    end
    
    it ' deve adicionar uma lista de vingadores' do
        hq =  AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')


        res = hq.list.size > 0

        expect(hq.list.size).to be > 0  #include - size metodo de validar o total de registro da lista
        expect(res).to be true
    end

    #cenario
    it 'thor deve ser o primeiro da lista' do
        hq =  AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor') #Thor deve ser o primeiro da lista
    end
   
    it ' Ironman deve ser o último da lista ' do 
        hq =  AvengerHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman') #Ironman deve ser o último da lista

    end
    
    it 'Deve conter o sobrenome' do
        avenger = 'Peter Parker'
     
        expect(avenger).to match(/Parker/) #deve conter
        expect(avenger).not_to match(/Ferreira/) #nao deve conter

    
    end

end