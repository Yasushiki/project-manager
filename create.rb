# encoding: utf-8

print "\nNome do projeto: "
name = gets.chomp

print "Ferramentas: "
ferra = gets.chomp

print "Objetivos gerais: "
gerOb = gets.chomp

print "Objetivos específicos: "
espOb = gets.chomp.encode("UTF-8").split("/")


File.open("#{name}.md", "w+", :encoding => 'utf-8') do |f|
    f.write("# PROJETO #{name.upcase}\n")

    f.write("\n## Ferramentas: \n")
    f.write(ferra)

    f.write("\n\n\n## Objetivo geral: \n")
    f.write(gerOb)

    f.write("\n\n\n## Objetivos específicos:")
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