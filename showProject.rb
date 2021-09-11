print "\nNome do projeto: "
fileName = gets.chomp

dir = Dir["*.md"]

if dir.include? fileName + ".md"

    system "cls" || "clear"

    file = File.open("#{fileName}.md")

    file.each do |line|
        print line
    end

    puts ""

else
    puts "Projeto \"#{fileName}\" não encontrado"
end

puts ""
