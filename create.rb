# encoding: utf-8

dictonary = {"pt" => 
    ["Nome do projeto: ", "Ferramentas: ", "Objetivo geral: ", "Objetivos específicos: ", "PROJETO"],
            "en" =>
    ["Project name: ", "Tools: ", "General objective: ", "Specific objectives: ", "PROJECT"]}

lang = "pt"

print "\n#{dictonary[lang][0]}"
name = gets.chomp

print "#{dictonary[lang][1]}"
ferra = gets.chomp

print "#{dictonary[lang][2]}"
gerOb = gets.chomp

print "#{dictonary[lang][3]}"
espOb = gets.chomp.encode("UTF-8").split("/")


File.open("#{name}.md", "w+", :encoding => 'utf-8') do |f|
    f.write("# #{dictonary[lang][4]} #{name.upcase}\n")

    f.write("\n## #{dictonary[lang][1]} \n")
    f.write(ferra)

    f.write("\n\n\n## #{dictonary[lang][2]} \n")
    f.write(gerOb)

    f.write("\n\n\n## #{dictonary[lang][3]}")
    espOb.each do |first|
        
        index = 0

        first.split("-").each do |second|

            if index == 0 
                f.write("\n- [ ] #{second}")
            else 
                f.write("\n    - [ ] #{second}")
            end

            index += 1

        end
    end

end

puts ""