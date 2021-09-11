dictonary = {"pt" => 
    ["Nome do projeto: ", "Projeto", "não encontrado"],
            "en" =>
    ["Project name: ", "Project", "not found"]}

lang = "pt"

print "\n#{dictonary[lang][0]}"
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
    puts "#{dictonary[lang][1]} \"#{fileName}\" #{dictonary[lang][2]}"
end

puts ""
