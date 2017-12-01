require 'gosu'
class Placar
  def initialize (window)
    @placar_n = Gosu::Image.new(window, "neutro.png", true)
	@placar_p = Gosu::Image.new(window, "perdeu.png", true)
	@placar_g = Gosu::Image.new(window, "ganhou.png", true)
	@placar_0 = Gosu::Image.new(window, "0.png",true)
	@placar_1 = Gosu::Image.new(window, "1.png",true)
	@placar_2 = Gosu::Image.new(window, "2.png",true)
	@placar_3 = Gosu::Image.new(window, "3.png",true)
	@placar_4 = Gosu::Image.new(window, "4.png",true)
	@placar_5 = Gosu::Image.new(window, "5.png",true)
	@placar_6 = Gosu::Image.new(window, "6.png",true)
	@placar_7 = Gosu::Image.new(window, "7.png",true)
	@placar_8 = Gosu::Image.new(window, "8.png",true)
	@placar_9 = Gosu::Image.new(window, "9.png",true)
	@placar_10 = Gosu::Image.new(window, "10.png",true)
	@placar_11 = Gosu::Image.new(window, "11.png",true)
	@placar_12 = Gosu::Image.new(window, "12.png",true)
	@placar_jog=[@placar_0,@placar_1,@placar_2,@placar_3,@placar_4,@placar_5,@placar_6,@placar_7,@placar_8,@placar_9,@placar_10,@placar_11,@placar_12]
	@placar_maq=[@placar_0,@placar_1,@placar_2,@placar_3,@placar_4,@placar_5,@placar_6,@placar_7,@placar_8,@placar_9,@placar_10,@placar_11,@placar_12]
	@placar_vc=[@placar_n, @placar_n, @placar_n]
	@placar_cpu=[@placar_n, @placar_n, @placar_n]
	@potencia_a=0
	@potencia_b=0
	@jogada=0
	@result=0
	@manil=11
	@jog=0
	@maq=0
	@mani=0
	@manter_desenho=[]
	@placar=[0,0]
	@placar_jogador=0
	@placar_maquina=0
	@partida=""
	@reiniciar=false
	@resultado_final=""
  	end
	
	def iniciar
	@placar=[0,0]
	@jogada=0
	@potencia_a=0
	@potencia_b=0
	@result=0
	@jog=0
	@maq=0
	@mani=0
	@reiniciar=false
	end
	
	
	def iniciar_ponto
	@manter_desenho=[]
	end
	
	
def Desenhar_placar
 @placar_jog[@placar_jogador].draw(480,71,0)
 @placar_maq[@placar_maquina].draw(574,71,0)
 
 @placar_vc[0].draw(572,272,0)
  @placar_vc[1].draw(572,292,0)
  @placar_vc[2].draw(572,312,0)
  @placar_cpu[0].draw(572,365,0)
  @placar_cpu[1].draw(572,385,0)
  @placar_cpu[2].draw(572,405,0) 
     
 
 if(@manter_desenho[0]==1)then
 @placar_g.draw(572,272,0)
 @placar_p.draw(572,365,0)
 end
 if(@manter_desenho[0]==2)then
 @placar_p.draw(572,272,0)
 @placar_g.draw(572,365,0)
 end
 if(@manter_desenho[0]==3)then
  @placar_g.draw(572,272,0)
 @placar_g.draw(572,365,0)
 end
 if(@manter_desenho[1]==4)then
 @placar_g.draw(572,292,0)
  @placar_p.draw(572,385,0)
  end
 if(@manter_desenho[1]==5)then
 @placar_p.draw(572,292,0)
  @placar_g.draw(572,385,0)
 end
 if(@manter_desenho[1]==6)then
@placar_g.draw(572,292,0)
  @placar_g.draw(572,385,0)
 end
 if(@manter_desenho[2]==7)then
 @placar_g.draw(572,312,0)
  @placar_p.draw(572,405,0)
 end
 if(@manter_desenho[2]==8)then
 @placar_p.draw(572,312,0)
 @placar_g.draw(572,405,0)
 end
 if(@manter_desenho[2]==9)then
 @placar_g.draw(572,312,0)
  @placar_g.draw(572,405,0)
 end
 
 
  
 end
 
 
 def Pontos_calc(jog,maq,mani)
 @jog=jog
 @maq=maq
 @mani=mani
 if(jog<4)then
 @jogada=@jogada+1
 if(mani<40 and mani>35)then
 @potencia_a=@manil
 else
 @potencia_a=1
 end
 elsif(jog<8 and jog>3)then
 @jogada=@jogada+1
 if(mani<4)then
 @potencia_a=@manil
 else
 @potencia_a=2
 end
 elsif(jog<12 and jog>7)then
 @jogada=@jogada+1
 if(mani<8 and mani>3)then
 @potencia_a=@manil
 else
 @potencia_a=3
 end
 elsif(jog<16 and jog>11)then
 @jogada=@jogada+1
 if(mani<12 and mani>7)then
 @potencia_a=@manil
 else
 @potencia_a=4
 end
 elsif(jog<20 and jog>15)then
 @jogada=@jogada+1
 if(mani<16 and mani>11)then
 @potencia_a=@manil
 else
 @potencia_a=5
 end
 elsif(jog<24 and jog>19)then
 @jogada=@jogada+1
 if(mani<20 and mani>15)then
 @potencia_a=@manil
 else
 @potencia_a=6
 end
 elsif(jog<28 and jog>23)then
 @jogada=@jogada+1
 if(mani<24 and mani>19)then
 @potencia_a=@manil
 else
 @potencia_a=7
 end
 elsif(jog<32 and jog>27)then
 @jogada=@jogada+1
 if(mani<28 and mani>23)then
 @potencia_a=@manil
 else
 @potencia_a=8
 end
 elsif(jog<36 and jog>31)then
 @jogada=@jogada+1
 if(mani<32 and mani>27)then
 @potencia_a=@manil
 else
 @potencia_a=9
 end
 elsif(jog<40 and jog>35)then
 @jogada=@jogada+1
 if(mani<36 and mani>31)then
 @potencia_a=@manil
 else
 @potencia_a=10
 end
 end
 
 
 if(maq<4)then
 if(mani<40 and mani>35)then
 @potencia_b=@manil
 else
 @potencia_b=1
 end
 elsif(maq<8 and maq>3)then
  if(mani<4)then
 @potencia_b=@manil
 else
 @potencia_b=2
 end
 elsif(maq<12 and maq>7)then
if(mani<8 and mani>3)then
 @potencia_b=@manil
 else
 @potencia_b=3
 end
 elsif(maq<16 and maq>11)then
  if(mani<12 and mani>7)then
 @potencia_b=@manil
 else
 @potencia_b=4
 end
 elsif(maq<20 and maq>15)then
  if(mani<16 and mani>11)then
 @potencia_b=@manil
 else
 @potencia_b=5
 end
 elsif(maq<24 and maq>19)then
 if(mani<20 and mani>15)then
 @potencia_b=@manil
 else
 @potencia_b=6
 end
 elsif(maq<28 and maq>23)then
   if(mani<24 and mani>19)then
 @potencia_b=@manil
 else
 @potencia_b=7
 end
 elsif(maq<32 and maq>27)then
  if(mani<28 and mani>23)then
 @potencia_b=@manil
 else
 @potencia_b=8
 end
 elsif(maq<36 and maq>31)then
if(mani<32 and mani>27)then
 @potencia_b=@manil
 else
 @potencia_b=9
 end
 elsif(maq<40 and maq>35)then
if(mani<36 and mani>31)then
 @potencia_b=@manil
 else
 @potencia_b=10
 end
 end
 calc_desenho
 end
 
 def calc_desenho
 if(@jogada==1 and @potencia_a>@potencia_b)then
 @result=1
 @manter_desenho<<1
 @placar[0]=@placar[0]+1
 elsif(@jogada==1 and @potencia_a<@potencia_b)then
 @result=2
 @manter_desenho<<2
 @placar[1]=@placar[1]+1
 elsif(@jogada==1 and @potencia_a==@potencia_b)then
 @result=3
 @manter_desenho<<3
 @placar[0]=@placar[0]+1
 @placar[1]=@placar[1]+1
 elsif(@jogada==2 and @potencia_a>@potencia_b)then

 @result=4
 @manter_desenho<<4
 @placar[0]=@placar[0]+1
 elsif(@jogada==2 and @potencia_a<@potencia_b)then
 @result=5
 @manter_desenho<<5
 @placar[1]=@placar[1]+1
 elsif(@jogada==2 and @potencia_a==@potencia_b)then
 @result=6
 @manter_desenho<<6
 @placar[0]=@placar[0]+1
 @placar[1]=@placar[1]+1
 elsif(@jogada==3 and @potencia_a>@potencia_b)then
 @result=7
 @manter_desenho<<7
 @placar[0]=@placar[0]+1
 elsif(@jogada==3 and @potencia_a<@potencia_b)then
 @result=8
 @manter_desenho<<8
 @placar[1]=@placar[1]+1
 elsif(@jogada==3 and @potencia_a==@potencia_b)then
 @result=9
 @manter_desenho<<9
 @placar[0]=@placar[0]+1
 @placar[1]=@placar[1]+1
 end
 
end 

def placar_geral
if(@placar[0]==2)then
@placar_jogador=@placar_jogador+1
@reiniciar=true
@partida="ganhou"
return @reiniciar
elsif(@placar[0]==3)then
@placar_jogador=@placar_jogador+1
@reiniciar=true
@partida="ganhou"
return @reiniciar
elsif(@placar[1]==2)then
@placar_maquina=@placar_maquina+1
@reiniciar=true
@partida="perdeu"
return @reiniciar
elsif(@placar[1]==3)then
@placar_maquina=@placar_maquina+1
@reiniciar=true
@partida="perdeu"
return @reiniciar
end
end

def part
return @partida
end
def placar_final
return @placar_jogador,@placar_maquina
end
def estado_final
if (@placar_jogador==12) then
@resultado_final="ganhou"
return @resultado_final
elsif(@placar_maquina==12)then
@resultado_final="perdeu"
return @resultado_final
end
end

end


