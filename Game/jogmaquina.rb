require 'gosu'
require 'Gerar_cartas'
class Jogmaquina
  def initialize (window)
  @calculo=0
  @maior=0
  @mjogada=Gerar_cartas.new(self)
  	end
def calcular(cal)

if(cal[0]>cal[1] and cal[0]>cal[2]) then
@maior=cal[0]
@mjogada.jogadamaquina(@maior)
elsif (cal[1]>cal[0] and cal[1]>cal[2]) then
@maior=cal[1]
@mjogada.jogadamaquina(@maior)
elsif (cal[2]>cal[0] and cal[2]>cal[1]) then
@maior=cal[2]
@mjogada.jogadamaquina(@maior)
end  
  end
 end
 