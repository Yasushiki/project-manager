print "\nNome do projeto a ser apagado: "
fileName = gets.chomp

print "Você realmente quer apagar este projeto? [sim/nao]: "
certeza = gets.chomp

dir = Dir["*.md"]

if fileName in dir
    if certeza == "sim"
        File.delete("#{fileName}.md")
        puts "\"#{fileName}\" apagado com sucesso"
    else
        puts "Não foi apagado"
    end
else
    puts "Este projeto não existe"
end

puts ""