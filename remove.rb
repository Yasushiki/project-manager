dictonary = {"pt" => 
    ["Nome do projeto a ser apagado: ", "Você realmente quer apagar este projeto? [sim/nao] ", "apagado com sucesso", "Projeto", "não apagado", "não encontrado"],
            "en" =>
    ["Project name to be deleted: ", "Do you really want to delete this project? [yes/no] ", "deleted successfully", "Project", "not deletd", "not found"]}

lang = "pt"

print "\n#{dictonary[lang][0]}"
fileName = gets.chomp

dir = Dir["*.md"]

if dir.include? fileName + ".md"
    print "#{dictonary[lang][1]}"
    certeza = gets.chomp

    if certeza == "sim" || certeza == "yes"
        File.delete("#{fileName}.md")
        puts "\"#{fileName}\" #{dictonary[lang][2]}"
    else
        puts "#{dictonary[lang][3]} #{dictonary[lang][4]}"
    end
else
    puts "#{dictonary[lang][3]} \"#{fileName}\" #{dictonary[lang][5]}"
end

puts ""