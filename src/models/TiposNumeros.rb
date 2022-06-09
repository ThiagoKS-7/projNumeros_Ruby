'''
    Pra provar que tudo no ruby é objeto
    Criou-se uma classe que sobrescreve a classe Integer 
    e sobrepõe o método
'''
class Integer
    def + (value)
        self  - value
    end
end

class TiposNumeros
    def initialize (x, y)
        @x = x
        @y = y
    end
    def displayResult
        puts "X vale #{@x}, tipo #{@x.class}" # numero inteiro
        puts "Y vale #{@y}, tipo #{@y.class}" # numeroo ponto flutuante
        puts "O valor #{123_500} não muda, apesar da _" # _ ignorado, só pra ler melhor
        puts "A soma de um int com float é sempre float -> #{(@x + @y).ceil(2)}" #arredonda o valor
        @send = 5.send("+", 3) # envia mensagem pro objeto Integer novo. A soma daria 8
        puts "Valor com método reescrito #{@send}"  # Mas dps deu 2, por causa da troca do método
        if (@x.class != "Float")
            puts "É par? #{@x.even?}"
        end
        if (@y.class != "Float")
            puts "É par? #{@y.even?}"
        end
    end
end

def runProgram
    x = 1
    y = 2
    tn = TiposNumeros.new(x,y)
    tn.displayResult
end