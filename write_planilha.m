function write_planilha(fname, fpath, regioes, legenda, dados_porc_por_regiao)
  % Salva os dados em uma nova aba na planilha.
  %
  % Entradas:
  %   fname: nome do arquivo.
  %   fpath: caminho do arquivo.
  %   regioes: regiões do país.
  %   legenda: legenda dos dados.
  %   dados_porc_por_regiao: dados percentuais por região.

  planilha = "Percentuais por regioes";
  porc_range = 'B2:D7';
  legenda_range = 'B1:D1';
  regioes_range = 'A2:A6';

  xlswrite([fpath fname], dados_porc_por_regiao, planilha, porc_range);
  xlswrite([fpath fname], legenda, planilha, legenda_range);
  xlswrite([fpath fname], regioes', planilha, regioes_range);
endfunction
