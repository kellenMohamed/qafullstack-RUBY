=begin
class Conta
    #criando atributo:
    attr_accessor :saldo

    def deposita(valor)
        #recurso "Self" que chama um objeto dentro da própria classe "Herança" = this.
        self.saldo += valor

        puts 'Depositando a quantia de ' + valor.to_s + ' reais'
        #abaixo o mesmo resultario sem precisar converter "valor" para String (interpolação de string)
        puts "Depositando a quantia de #{valor} reais"
    end
end

c = Conta.new

c.saldo = 0.0
c.deposita(100.30)
puts c.saldo
=end

class Conta
    #criando atributo:
    attr_accessor :saldo, :nome

    def initialize(nome) #é o construtor
        self.saldo = 0.0
        self.nome  = nome
    end

    def deposita(valor)
        #recurso "Self" que chama um objeto dentro da própria classe "Herança" = this.
        self.saldo += valor

        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"
    end
end

c = Conta.new('Kellen')

c.deposita(100.30)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome