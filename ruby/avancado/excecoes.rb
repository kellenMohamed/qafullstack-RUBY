=begin
    #devo tentar fazer algo:
    file = File.open('./ola.tt')
    if file
        puts file.read
    end
rescue Exception => e
    #possível erro
    puts e.message
    puts e.backtrace

=end

def soma(n1,n2)
    n1 + n2
rescue Exception => e
    e.message
    e.backtrace
    puts 'Erro ao executar soma'
end

soma('10',5)