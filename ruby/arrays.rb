
@avengers = Array.new

@avengers.push('Iron Man')
@avengers.push('Thor')
@avengers.push('Hulk')

def imprime_hulk
    @avengers.each do |a|
        puts a if a == 'Hulk'
    end
end

imprime_hulk