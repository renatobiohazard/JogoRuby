$LOAD_PATH<<"."
require 'gosu'
require 'Gerar_cartas'
require 'Placar'
class Inicio < Gosu::Window
@@formato = [3, 1.0, 1.0, 0xff000000]
  def initialize
    super(640,480,false)
    self.caption = "Truco"
	@imagem_fundo = Gosu::Image.new(self, "gramaverde.png", true)
	@placar=Placar.new(self)
	@cartas=Gerar_cartas.new(self,@placar)
	@fonte = Gosu::Font.new(self, Gosu::default_font_name, 30)
	@estado="inicio"
	@jog=0
	@tecla=[]
	@tec=""
	@reinicia=false
	@final_jog=0
	@final_maq=0
	@mover=false
  end
 
	def iniciar 
	@jog=0
	@tec=""
	@reinicia=false
	@estado = "jogando"
    @cartas.gerar
	@tecla=[]
	@placar.iniciar_ponto
end

  def draw 
  @imagem_fundo.draw(0,0,0)
  @placar.Desenhar_placar
   if @estado=="jogando" then
   @cartas.Desenhar_jogador
   @cartas.Desenhar_maquina   
   elsif @estado=="inicio" then
   desenhar_inicio
   elsif @estado=="final" then
   desenhar_final
	end
	
  if(@reinicia==true)then
	desenhar_reinicio
	end
	if @estado=="inicio" then
	print "       
	   ,##,                                                            
      @@@@@@             ''          .'''''   ;'''';         @         
     @@@@@@@;            ''`         ''''''' ''''''';       ,@@        
     @@@@@@@@           ''''        '''''''' ''''''''       @@@@       
     @@@@@@@@          ;'''''       '''''''''''''''''      @@@@@+      
     @@@@@@@.          ''''''       '''''''''''''''''     @@@@@@@,     
      @@@@@@          ''''''''      '''''''''''''''''    @@@@@@@@@:    
      +@@@@          ''''''''''      '''''''''''''''    @@@@@@@@@@@:   
  +@@@@@@@@@@@@     `'''''''''';     `''''''''''''''   @@@@@@@@@@@@@   
 '@@@@@@@@@@@@@@    ''''''''''''      '''''''''''''    @@@@@@@@@@@@@@  
 @@@@@@@@@@@@@@@@    '''''''''';       '''''''''''    @@@@@@@@@@@@@@@  
 @@@@@@@@@@@@@@@@    ''''''''''         '''''''''     @@@@@@@@@@@@@@@  
 @@@@@@@@@@@@@@@+     ''''''''           ''''''',     @@@@@@@@@@@@@@@  
  @@@@@ @@@@@@@@       ''''''            `''''''      @@@@@@@@@@@@@@@  
   @@@ ,@@  @@+        .'''''             '''''        @@@@@@@@@@@@@   
       @@@,             ''''               '''           +@, @@ :;     
       @@@@              ''                ,''               @@        
      @@@@@'             ;'                 '               @@@        
     .@@@@@@.                               '              `@@@@       "                       
    
	  
					
end
						
	if @placar.part=="ganhou" then
	print "        @@                                              
                   @@                                              
                                                                   
 '@.    @@     @@  @@   :@ .@@@#    .@ `@@@#      ;@@@@,    @@ @@@ 
  @@    @@.   ,@,  @@   :@@@, #@@   .@#@; #@@    @@`  ;@@   @@@@ ; 
  @@   '@@@   @@   @@   :@@    @@   .@@    @@   '@     +@   @@#    
  .@:  @#+@   @+   @@   :@.    #@   .@,    +@`  @@`````.@.  @@     
   @@  @` @: '@    @@   :@.    +@   .@,    '@   @@@@@@@@@   @@     
   #@ '@  @@ @@    @@   :@.    +@   .@,    '@   @@          @@     
    @+@#  :@ @.    @@   :@.    +@   .@,    '@   #@          @@     
    @@@    @@@     @@   :@.    +@   .@,    '@    @@;   .@   @@     
    .@@    #@+     @@   ,@`    +@   `@.    ;@     ;@@@@@`   @@ "
	elsif @placar.part=="perdeu" then
	print "
	#@#                                                            
    #@#                                                            
    #@#                                                            
    #@#        `;;;           .;;.          ;;;             ,;,    
    #@#     `@@@@@@@@@      @@@@@@@#     +@@@@@@@@     +@#:@@@@.   
    #@#    '@@      +@@    @@;          @@+     ;@@    +@@@,       
    #@#    @@.       @@@   @@#         ;@@       @@;   +@@         
    #@#   :@@        :@@    @@@@:      @@@@@@@@@@@@+   +@@         
    #@#   '@@        :@@      ;@@@@.   @@#,,,,,,,,,    +@@         
    #@#   .@@`       @@@         ;@@`  #@#             +@@         
    #@#    @@@      ;@@.          @@`   @@.            +@@         
    #@#     @@@@++#@@@`   `@@'  '@@#    .@@@'   +@@    +@@         
    '@;       #@@@@@`      `@@@@@#        `@@@@@@:     :@#"
	end
	

	end
	
	
	def desenhar_inicio
	msg1 =  " Pressione [A] para jogar a carta da primeira posicao."
    x = self.width / 2 - @fonte.text_width(msg1,1) / 2
    x = self.width / 2 - @fonte.text_width(msg1,1) / 2
    @fonte.draw(msg1, x, self.height/3, *@@formato)
	msg2 =  " Pressione [S] para jogar a carta da segunda posicao."
    y = self.width / 2 - @fonte.text_width(msg2,1) / 2
    y = self.width / 2 - @fonte.text_width(msg2,1) / 2
    @fonte.draw(msg2, y, self.height/2.5, *@@formato)
	msg3 =  " Pressione [D] para jogar a carta da terceira posicao."
    z = self.width / 2 - @fonte.text_width(msg3,1) / 2
    z = self.width / 2 - @fonte.text_width(msg3,1) / 2
    @fonte.draw(msg3, z, self.height/2.1, *@@formato)
	 msg4 =  " Pressione [I] para iniciar o jogo."
    w = self.width / 2 - @fonte.text_width(msg4,1) / 2
    w = self.width / 2 - @fonte.text_width(msg4,1) / 2
    @fonte.draw(msg4, w, self.height/1.5, *@@formato)
	
	end
	def desenhar_reinicio
	 msg =  " Voce #{@placar.part}. Aperte [R] para comecar nova partida."
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    @fonte.draw(msg, x, self.height/2, *@@formato)
	
	end
	
	def desenhar_final
	if(@placar.estado_final=="perdeu")then
	 msg =  "Que pena, voce #{@placar.estado_final} o jogo." 
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    @fonte.draw(msg, x, self.height/2, *@@formato)
	elsif (@placar.estado_final=="ganhou")then
	 msg =  "Parabens, voce #{@placar.estado_final} o jogo." 
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    x = self.width / 2 - @fonte.text_width(msg,1) / 2
    @fonte.draw(msg, x, self.height/2, *@@formato)
	end
	end
	
  def update
   
   
 if (button_down?(Gosu::Button::KbI) and @estado!="final") then
  @estado = "jogando"
  @cartas.gerar
  @tec="i"
  @mover=true
  end
  
  if (@estado=="jogando" and @mover==true)then
  if (button_down?(Gosu::Button::KbA) and @tecla[0]!="a" and @tecla[1]!="a" and @tecla[2]!="a") then
  @tec = "a"
  @jog=1
  @cartas.verificar(@tec)
  @cartas.Jogada_maquina
  @tecla<<"a"
  @reinicia=@placar.placar_geral
  verificar_final
  mudar_estado
  elsif (button_down?(Gosu::Button::KbS) and @tecla[0]!="s" and @tecla[1]!="s" and @tecla[2]!="s") then
  @tec = "s"
  @jog=1
  @cartas.verificar(@tec)
  @cartas.Jogada_maquina
  @tecla<<"s"
  @reinicia=@placar.placar_geral
  verificar_final
  mudar_estado
  elsif (button_down?(Gosu::Button::KbD) and @tecla[0]!="d" and @tecla[1]!="d" and @tecla[2]!="d") then
  @tec = "d"
  @jog=1
  @cartas.verificar(@tec)
  @cartas.Jogada_maquina
  @tecla<<"d"
  @reinicia=@placar.placar_geral
  verificar_final
  mudar_estado
  end
  
end
  
  if button_down?(Gosu::Button::KbR)  then
	@tec="r"
	reiniciar
	@mover=true
	end
end
	def verificar_final
	@final_jog,@final_maq=(@placar.placar_final)
	if(@final_jog==12 or @final_maq==12)then
	@estado="final"
	end
	if (@estado=="final")then
	@reinicia=false
	end
	end

	def reiniciar
	
		 if (@reinicia==true)then
		@cartas.iniciar
		@placar.iniciar
		iniciar
		end
	
	end
	
	def mudar_estado 
	if (@reinicia==true)then
	@mover=false
	end
	end
	
end