describe 'suite rspec' do
    it 'some de valores' do
        soma = 10 + 5
        expect(soma.to_s).to eql '15'
        puts(soma)
    end        

end    