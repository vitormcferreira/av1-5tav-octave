function av1()
  [dados, texto] = get_planilha();

  dados_por_estado = calcula_dados_por_estado(dados);

  dados_por_regiao = calcula_dados_por_regiao(dados_por_estado, texto);

  dados_porc_por_regiao = calcula_dados_porc_por_regiao(dados_por_regiao);
endfunction
