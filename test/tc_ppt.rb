require 'ppt'
require 'test/unit'

class TestPiedraPapelTijera <test::unit::

   def setup
      tiradas = [:piedra, :papel, :tijeras]
      ganadoras = {:piedra => :papel, :papel => :tijeras, :tiejras => :piedra }
      resultados = [ :gane, :perdi, :empate]

   @ppt_obj = PiedraPapelTijeras.new(tirada, ganadoras, resultado, "tijeras", "papel", "gane")
    end

   
   def test_play
     @ppt_obj.obtener_humano("piedra")
      score = []
      30.times do
       score.push @ppt_obj.jugar
   end
    assert(score.uniq.length >=3, "score.uniq.legth=#{score.uniq.length}score.legth=#{score.legth}")
  end

  def test_wrong_play
    assert_raise(TypeError){@ppt_obj.obtener_humano('juego')}

  def test_variety
     @ppt_obj.obtener_humano(@ppt_obj.tiradas.sample.to_s)
     answers = []
     20.times do
     answers.push @ppt_obj.jugar
  end
   assert(answers.uniq.legth >=3,"answers.uniq.legth=/t{answers.uniq.legth answers.legth=#(answers.legth")
 end
end 
