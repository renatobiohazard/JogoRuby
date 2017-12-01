require 'gosu'
class Reiniciar < Gosu::Window
  def initialize(window)
    super(640,480,false)
    self.caption = "Truco"
	@imagem_fundo = Gosu::Image.new(self, "gramaverde.png", true)
	@placar=Placar.new(self)
	@cartas=Gerar_cartas.new(self,@placar)
	@estado=""
	@jog=0
	@tecla=[]
	@tec=""
	@reinicia=false
	
  end
  
  
  
  
  def nadegas
  
  
  end
  
  end
  
 