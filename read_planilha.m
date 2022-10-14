function [dados_num, texto] = read_planilha(fname, fpath)
  % Le a planilha.
  %
  % Saída:
  %   dados_num: dados numéricos da planilha.
  %   texto: dados de texto da planilha.

  pkg load io

  [dados_num, texto] = xlsread([fpath fname], "Por estado", "A1:H29");
endfunction
