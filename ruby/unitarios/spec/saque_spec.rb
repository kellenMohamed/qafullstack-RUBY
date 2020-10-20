require_relative '../bank'

describe ContaCorrente do

    describe 'Saque' do
        context 'quando o valor é positivo' do
            before(:all) do
                @conta = ContaCorrente.new(1000.00)
                @conta.saca(200.00)
            end
            it 'entao atualiza saldo' do
                expect(@conta.saldo).to eql 800.00
            end

        end

        context 'Saldo zero' do     
           before(:all) do
                 @Conta = ContaCorrente.new(0.00)
                 @Conta.saca(100.00)
            end

            it 'vejo mensagem' do
                expect(@Conta.mensagem).to eql 'Saldo insuficente'
            end

            it 'meu saldo permanece com zero' do
                expect(@conta.saldo).to eql 0.00
            end
        end

        context 'Saldo insuficiente' do     
            before(:all) do
                  @Conta = ContaCorrente.new(100.00)
                  @Conta.saca(101.00)
             end
 
             it 'vejo mensagem' do
                 expect(@Conta.mensagem).to eql 'Saldo insuficente'
             end
 
             it 'meu saldo permanece conforme o valor inicial' do
                 expect(@conta.saldo).to eql 100.00
             end
         end

         context 'Limite de Saque Ultrapassado' do     
             before(:all) do
                   @Conta = ContaCorrente.new(1000.00)
                   @Conta.saca(701.00)
              end
  
              it 'vejo mensagem' do
                  expect(@Conta.mensagem).to eql 'Limite máximo 700.00'
              end
  
              it 'meu saldo permanece conforme o valor inicial' do
                  expect(@conta.saldo).to eql 1000.00
              end
          end
        
    end
end
