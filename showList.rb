puts ""

if Dir["*.md"].length > 0
    puts "Projetos: "
    puts Dir["*.md"]
else
    puts "Você não tem nenhum projeto"
end

puts ""