#Classe pai:
class Veiculo
    attr_accessor :nome, :marca, :modelo, :estilo

    def initialize(nome, marca, modelo,estilo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
        self.estilo = estilo
    end

    def ligar
        puts "#{nome} está pronto para iniciar o trajeto"
    end

    def buzinar
        puts "#{nome} passando ... bibi"
    end
end

#Classe 1 com herança
class Carro < Veiculo    
    def dirigir
        puts "#{nome} iniciando o trajeto"
    end
end    

#Classe 2 com herança
class Moto < Veiculo
    def pilotar
        puts "#{nome} iniciando o trajeto"
    end
end

lancer = Carro.new('Lancer', 'Mitsubishi','EVO','Jovem')
lancer.ligar
lancer.buzinar
lancer.dirigir

puts lancer.nome
puts lancer.marca
puts lancer.modelo
puts lancer.estilo
puts '  '


fazer = Moto.new('Fazer','Yamanha','250x','Ousado')
fazer.ligar
fazer.buzinar
fazer.pilotar

puts fazer.nome
puts fazer.marca
puts fazer.modelo
puts fazer.estilo


