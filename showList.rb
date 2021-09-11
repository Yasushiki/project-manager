dictonary = {"pt" => 
    ["Projetos: ", "Você não tem nenhum projeto"],
            "en" =>
    ["Projects: ", "You don't have any projects"]}

lang = "pt"

puts ""

if Dir["*.md"].length > 0
    puts dictonary[lang][0]
    puts Dir["*.md"]
else
    puts dictonary[lang][1]
end
