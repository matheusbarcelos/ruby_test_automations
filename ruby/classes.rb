class Animal
    attr_accessor :nome, :idade, :raca
end 

class Dogs < Animal
    def late
        puts @nome + ' diz: Au Au..'
    end
end

class Cat < Animal
    def mia
        puts @nome + ' diz: Miau Miau..'
    end
end

class Duck < Animal
    def grasna
        puts @nome + ' diz: Quack Quack..'
    end
end

spike = Dogs.new
spike.nome = 'Spike'

snoop = Dogs.new
snoop.nome = 'Snoop'

tom = Cat.new
tom.nome = 'Tom'

patolino = Duck.new
patolino.nome = 'Patolino'

spike.late
snoop.late
tom.mia
patolino.grasna
