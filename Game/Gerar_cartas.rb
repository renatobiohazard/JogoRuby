require 'gosu'
class Gerar_cartas
  def initialize (window,placar)
	@carta_2p = Gosu::Image.new(window, "2p.png", true)
	@carta_3p = Gosu::Image.new(window, "3p.png", true)
	@carta_4p = Gosu::Image.new(window, "4p.png", true)
	@carta_5p = Gosu::Image.new(window, "5p.png", true)
	@carta_6p = Gosu::Image.new(window, "6p.png", true)
	@carta_7p = Gosu::Image.new(window, "7p.png", true)
	@carta_qp = Gosu::Image.new(window, "qp.png", true)
	@carta_jp = Gosu::Image.new(window, "jp.png", true)
	@carta_kp = Gosu::Image.new(window, "kp.png", true)
	@carta_ap = Gosu::Image.new(window, "ap.png", true)
	@carta_2o = Gosu::Image.new(window, "2o.png", true)
	@carta_3o = Gosu::Image.new(window, "3o.png", true)
	@carta_4o = Gosu::Image.new(window, "4o.png", true)
	@carta_5o = Gosu::Image.new(window, "5o.png", true)
	@carta_6o = Gosu::Image.new(window, "6o.png", true)
	@carta_7o = Gosu::Image.new(window, "7o.png", true)
	@carta_qo = Gosu::Image.new(window, "qo.png", true)
	@carta_jo = Gosu::Image.new(window, "jo.png", true)
	@carta_ko = Gosu::Image.new(window, "ko.png", true)
	@carta_ao = Gosu::Image.new(window, "ao.png", true)
	@carta_2c = Gosu::Image.new(window, "2c.png", true)
	@carta_3c = Gosu::Image.new(window, "3c.png", true)
	@carta_4c = Gosu::Image.new(window, "4c.png", true)
	@carta_5c = Gosu::Image.new(window, "5c.png", true)
	@carta_6c = Gosu::Image.new(window, "6c.png", true)
	@carta_7c = Gosu::Image.new(window, "7c.png", true)
	@carta_qc = Gosu::Image.new(window, "qc.png", true)
	@carta_jc = Gosu::Image.new(window, "jc.png", true)
	@carta_kc = Gosu::Image.new(window, "kc.png", true)
	@carta_ac = Gosu::Image.new(window, "ac.png", true)
	@carta_2e = Gosu::Image.new(window, "2e.png", true)
	@carta_3e = Gosu::Image.new(window, "3e.png", true)
	@carta_4e = Gosu::Image.new(window, "4e.png", true)
	@carta_5e = Gosu::Image.new(window, "5e.png", true)
	@carta_6e = Gosu::Image.new(window, "6e.png", true)
	@carta_7e = Gosu::Image.new(window, "7e.png", true)
	@carta_qe = Gosu::Image.new(window, "qe.png", true)
	@carta_je = Gosu::Image.new(window, "je.png", true)
	@carta_ke = Gosu::Image.new(window, "ke.png", true)
	@carta_ae = Gosu::Image.new(window, "ae.png", true)
	@carta_vs = Gosu::Image.new(window, "verso.png", true)
	@cartas=[@carta_4p, @carta_4o, @carta_4c, @carta_4e, @carta_5p, @carta_5o, @carta_5c, @carta_5e, @carta_6o, @carta_6p,@carta_6c, @carta_6e,	@carta_7p, @carta_7o, @carta_7c, @carta_7e,	@carta_qp, @carta_qe, @carta_qc, @carta_qo,	@carta_jp, @carta_je, @carta_jc, @carta_jo,	@carta_kp, @carta_ke, @carta_kc, @carta_ko, @carta_ap, @carta_ao, @carta_ae, @carta_ac, @carta_2o, @carta_2e, @carta_2c, @carta_2p,  @carta_3o, @carta_3c, @carta_3e, @carta_3p]
	@cartas2=[@carta_4p, @carta_4o, @carta_4c, @carta_4e, @carta_5p, @carta_5o, @carta_5c, @carta_5e, @carta_6o, @carta_6p,@carta_6c, @carta_6e, @carta_7p, @carta_7o, @carta_7c, @carta_7e,	@carta_qp, @carta_qe, @carta_qc, @carta_qo,	@carta_jp, @carta_je, @carta_jc, @carta_jo,	@carta_kp, @carta_ke, @carta_kc, @carta_ko, @carta_ap, @carta_ao, @carta_ae, @carta_ac, @carta_2o, @carta_2e, @carta_2c, @carta_2p,  @carta_3o, @carta_3c, @carta_3e, @carta_3p]
	@placar=placar
	@cont=0
	@cont2=0
	@jogador=[]
	@maquina=[]
	@manilha=[]
	@potencia_jogador=[]
	@potencia_maquina=[]
	@potencia_manilha=[]
	@aux=0
	@ver_jogador=[]
	@ver_maquina=[]
	@maior=0
	@maior2=0
	@maior3=0
	@jogada_maquina=0
	@cont_maquina=0
	@tec=""
	end
	
	def iniciar
	@cartas=[@carta_4p, @carta_4o, @carta_4c, @carta_4e, @carta_5p, @carta_5o, @carta_5c, @carta_5e, @carta_6o, @carta_6p,@carta_6c, @carta_6e,	@carta_7p, @carta_7o, @carta_7c, @carta_7e,	@carta_qp, @carta_qe, @carta_qc, @carta_qo,	@carta_jp, @carta_je, @carta_jc, @carta_jo,	@carta_kp, @carta_ke, @carta_kc, @carta_ko, @carta_ap, @carta_ao, @carta_ae, @carta_ac, @carta_2o, @carta_2e, @carta_2c, @carta_2p,  @carta_3o, @carta_3c, @carta_3e, @carta_3p]
	@cartas2=[@carta_4p, @carta_4o, @carta_4c, @carta_4e, @carta_5p, @carta_5o, @carta_5c, @carta_5e, @carta_6o, @carta_6p,@carta_6c, @carta_6e, @carta_7p, @carta_7o, @carta_7c, @carta_7e,	@carta_qp, @carta_qe, @carta_qc, @carta_qo,	@carta_jp, @carta_je, @carta_jc, @carta_jo,	@carta_kp, @carta_ke, @carta_kc, @carta_ko, @carta_ap, @carta_ao, @carta_ae, @carta_ac, @carta_2o, @carta_2e, @carta_2c, @carta_2p,  @carta_3o, @carta_3c, @carta_3e, @carta_3p]
	@cont=0
	@cont2=0
	@jogador=[]
	@maquina=[]
	@manilha=[]
	@potencia_jogador=[]
	@potencia_maquina=[]
	@potencia_manilha=[]
	@aux=0
	@ver_jogador=[]
	@ver_maquina=[]
	@maior=0
	@maior2=0
	@maior3=0
	@jogada_maquina=0
	@cont_maquina=0
	@tec=""
	end
	

  def gerar 
	#gerar cartas jogador
	while @cont<3 do
	@aux=rand(40)
	if(@cartas[@aux]!=nil)then
	@jogador<<@cartas[@aux]
	@potencia_jogador<<@aux
	@cartas[@aux]=nil
	@cont=@cont+1
	@ver_jogador<<true
	end
	end
#gerar computador
	while @cont<6 do
	@aux=rand(40)
	if(@cartas[@aux]!=nil)then
	@potencia_maquina<<@aux
	@cartas[@aux]=nil
	@cont=@cont+1
	@ver_maquina<<true
	end
	end
	
# gerar manilha
while @cont<7 do
 @aux=rand(40)
 if(@cartas[@aux]!=nil)then
	@manilha<<@cartas[@aux]
	@potencia_manilha<<@aux
	@cartas[@aux]=nil
	@cont=@cont+1
	@maior3=@potencia_manilha[0]
	end
	end
	
	
  end

  def Desenhar_jogador
 #desenhar cartas iniciais
 if(@ver_jogador[0]==true)then
@jogador[0].draw(60,330,0)
elsif(@tec=="a")then
 @jogador[0].draw(76,180,0)
 
 end
 
if(@ver_jogador[1]==true)then
@jogador[1].draw(160,330,0)
else
if(@tec=="s")then
 @jogador[1].draw(76,180,0)
 end
 end

 if(@ver_jogador[2]==true)then
@jogador[2].draw(260,330,0)
else
 if(@tec=="d")then
 @jogador[2].draw(76,180,0)
 end
 end

  end
  
 def	Desenhar_maquina 		 
 if(@jogada_maquina==0)then
  @carta_vs.draw(60,42,0)
  @carta_vs.draw(160,42,0)
  @carta_vs.draw(260,42,0)
  elsif (@jogada_maquina==1) then
  @cartas2[@maior].draw(215,180,0)
  @carta_vs.draw(160,42,0)
  @carta_vs.draw(260,42,0)
  elsif  (@jogada_maquina==2) then
  @cartas2[@maior].draw(215,180,0)
  @carta_vs.draw(260,42,0)
  elsif  (@jogada_maquina==3) then
  @cartas2[@maior].draw(215,180,0)
  end

if (@manilha[0]!=nil)  
  @manilha[0].draw(332,180,0)
  end
  
 
		end
   
	def Jogada_maquina
	if(@potencia_maquina[0]==55 and @potencia_maquina[1]==55 and @potencia_maquina[2]!=55)then
	@maior=@potencia_maquina[2]
	@potencia_maquina[2]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)

	elsif(@potencia_maquina[0]==55 and @potencia_maquina[2]==55 and @potencia_maquina[1]!=55)then
	@maior=@potencia_maquina[1]
	@potencia_maquina[1]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[1]==55 and @potencia_maquina[2]==55 and @potencia_maquina[0]!=55)then
	@maior=@potencia_maquina[0]
	@potencia_maquina[0]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	end
	
	if(@potencia_maquina[0]==55 and @potencia_maquina[1]!=55 and @potencia_maquina[2]!=55 and @potencia_maquina[1]>@potencia_maquina[2])then
	@maior=@potencia_maquina[1]
	@potencia_maquina[1]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[0]==55 and @potencia_maquina[1]!=55 and @potencia_maquina[2]!=55 and @potencia_maquina[1]<@potencia_maquina[2])then
	@maior=@potencia_maquina[2]
	@potencia_maquina[2]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[1]==55 and @potencia_maquina[0]!=55 and @potencia_maquina[2]!=55 and @potencia_maquina[0]<@potencia_maquina[2])then
	@maior=@potencia_maquina[2]
	@potencia_maquina[2]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[1]==55 and @potencia_maquina[0]!=55 and @potencia_maquina[2]!=55 and @potencia_maquina[0]>@potencia_maquina[2])then
	@maior=@potencia_maquina[0]
	@potencia_maquina[0]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[2]==55 and @potencia_maquina[0]!=55 and @potencia_maquina[1]!=55 and @potencia_maquina[0]>@potencia_maquina[1])then
	@maior=@potencia_maquina[0]
	@potencia_maquina[0]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[2]==55 and @potencia_maquina[0]!=55 and @potencia_maquina[1]!=55 and @potencia_maquina[0]<@potencia_maquina[1])then
	@maior=@potencia_maquina[1]
	@potencia_maquina[1]=55
	@jogada_maquina=@jogada_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)

	end
	
	if(@potencia_maquina[0]>@potencia_maquina[1] and @potencia_maquina[0]>@potencia_maquina[2] and @potencia_maquina[0]<50)then
	@maior=@potencia_maquina[0]
	@ver_maquina[0]=false
	@jogada_maquina=@jogada_maquina+1
	@potencia_maquina[0]=55
	@cont_maquina=@cont_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[1]>@potencia_maquina[0] and @potencia_maquina[1]>@potencia_maquina[2] and @potencia_maquina[1]<50)then
	@maior=@potencia_maquina[1]
	@ver_maquina[1]=false
	@jogada_maquina=@jogada_maquina+1
	@potencia_maquina[1]=55
	@cont_maquina=@cont_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)
	
	elsif(@potencia_maquina[2]>@potencia_maquina[1] and @potencia_maquina[2]>@potencia_maquina[0] and @potencia_maquina[2]<50)then
	@maior=@potencia_maquina[2]
	@ver_maquina[2]=false
	@jogada_maquina=@jogada_maquina+1
	@potencia_maquina[2]=55
	@cont_maquina=@cont_maquina+1
	@placar.Pontos_calc(@maior2,@maior,@maior3)

	end
	
	end
	
	def verificar (tecla)
	if(tecla=="a") then
	@maior2=@potencia_jogador[0]
	@ver_jogador[0]=false
	@tec="a"
	
	elsif (tecla=="s") then
	@maior2=@potencia_jogador[1]
	@ver_jogador[1]=false
	@tec="s"
	
	elsif(tecla=="d") then
	@maior2=@potencia_jogador[2]
	@ver_jogador[2]=false
	@tec="d"
	
	end	
	end
	
  end