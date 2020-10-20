class ContaCorrente
    attr_accessor :saldo, :mensagem

    def initialize(saldo) #construtor
        self.saldo = saldo
    end

    def saca(valor)
        if (valor > saldo)
            self.mensagem = 'Saldo insuficente'
        elsif (valor > 700.00)
            self.mensagem = 'Limite máximo 700.00'
        else
            self.saldo -= valor
        end
    end
end    
