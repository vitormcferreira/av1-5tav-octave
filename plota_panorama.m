function plota_panorama(regioes, legenda, dados_porc_por_regiao)
  % Plota o gráfico com o panorama.
  %
  % Entradas:
  %   regiões: regiões do país.
  %   legenda: legenda do gráfico.
  %   dados_porc_por_regiao: saída da função get_dados_porc_por_regiao

  figure;
  clf;

  bar(dados_porc_por_regiao, "stacked");
  xlabel("Regiões"); ylabel("percentual");
  set(gca, 'xticklabel', regioes);
  title("Panorama da imunização por região no inicio de 2022");
  legend(legenda, "location", "southoutside", "orientation", "horizontal");
  axis("tight");
endfunction
