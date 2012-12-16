#!/usr/bin/ruby
Class PiedraPapelTijera

attr_accessor :tiradas, :ganadoras, :resultados
attr_reader :humano, :maquina, :resultado

def inicialize (tiradas,ganadoras,resultados,humano,maquina,resultado) 
 @ganadoras = ganadoras
 @humano = humano.to_sym
 @maquina = maquina
 @resultados = resultados
 @resultado = resultado.sym
end 

def obtener_humano(cadena)
  @humano = cadena.to_sym
   raise TypeError unless @tiradas.include?(humano)
end

def obtener_maquina
    @maquina = tiradas.sample
end

def jugar
  obtener_maquina
 if @humano == @maquina
    @resultado = resultados[2]
 elsif 
      @humano == @ganadoras[@maquina]
      @resultado = resultados[0]
    else @resultado = resultados[1]
  end
end
end

