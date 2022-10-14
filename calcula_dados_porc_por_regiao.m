function [porc_por_regiao] = calcula_dados_porc_por_regiao(dados_por_regiao)
  % Calcula as porcentagens dos dados para cada região.
  %
  % Entrada:
  %   dados_por_regiao: saída da função calcula_dados_por_regiao.
  %
  % Saída:
  %   porc_por_regiao: dados percentuais para cada região no formato:
  % [totalmente_imunizadas_perc parcialmente_imunizadas_perc nao_imunizadas_perc]

  pop_total = dados_por_regiao(:, 1);
  nao_imunizadas = dados_por_regiao(:, 2);
  totalmente_imunizadas = dados_por_regiao(:, 3);
  parcialmente_imunizadas = dados_por_regiao(:, 4);

  nao_imunizadas_perc = (nao_imunizadas ./ pop_total) * 100;
  totalmente_imunizadas_perc = (totalmente_imunizadas ./ pop_total) * 100;
  parcialmente_imunizadas_perc = (parcialmente_imunizadas ./ pop_total) * 100;

  porc_por_regiao = [totalmente_imunizadas_perc parcialmente_imunizadas_perc nao_imunizadas_perc];
endfunction
