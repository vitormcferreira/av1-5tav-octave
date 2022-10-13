function av1()
  [dados, texto] = get_planilha();

  dados_por_estado = calcula_dados_por_estado(dados);

  dados_por_regiao = calcula_dados_por_regiao(dados_por_estado, texto);

  % plota_grafico(dados_por_estado, dados_por_regiao);
endfunction
