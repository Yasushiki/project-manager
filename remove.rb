print "\nNome do projeto a ser apagado: "
fileName = gets.chomp

dir = Dir["*.md"]

if dir.include? fileName + ".md"
    print "Você realmente quer apagar este projeto? [sim/nao]: "
    certeza = gets.chomp

    if certeza == "sim"
        File.delete("#{fileName}.md")
        puts "\"#{fileName}\" apagado com sucesso"
    else
        puts "Não foi apagado"
    end
else
    puts "Projeto \"#{fileName}\" não encontrado"
end

puts ""