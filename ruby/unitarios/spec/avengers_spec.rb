class AvengersHeadQuarter

    attr_accessor :list

    def initialize
        self.list = []
    end

    def put(avenger)
        self.list.push(avenger)
    end
end

describe AvengersHeadQuarter do
    it 'Deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')
        expect(hq.list).to eql ['Spiderman']
        expect(hq.list).to include 'Spiderman'
    end

    it 'deve adicionar uma lista de vingadores' do
        hq = AvengersHeadQuarter.new

        hq.put('Hulk')
        hq.put('Thor')
        hq.put('Iron man')

        expect(hq.list).to include 'Hulk'
        expect(hq.list.size).to be > 0

        res = hq.list.size > 0
        expect(res).to be true
    end   
    
    it 'Thor deve ser o primeiro da lista' do
        #Criando o objeto
        hq = AvengersHeadQuarter.new

        hq.put('Hulk')
        hq.put('Thor')
        hq.put('Iron man')

        expect(hq.list).to start_with('Hulk')
    end     
    
    it 'Thor deve ser o ultimo da lista' do
        #Criando o objeto
        hq = AvengersHeadQuarter.new

        hq.put('Thor')
        hq.put('Iron man')
        hq.put('Hulk')

        expect(hq.list).to end_with('Hulk')
    end

    it 'deve conter o sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Peter/)
        expect(avenger).not_to match(/Papito/)
    end
end    