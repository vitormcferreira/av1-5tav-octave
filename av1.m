function av1()
  % Primeira avaliação de 5TAV.
  %
  % Esta função lê o arquivo .xlsx com dados sobre a vacinação no
  % Brasil que o usuário escolher, calcula as porcentagens da
  % população vacinada, plota um gráfico e salva os dados no
  % arquivo .xlsx inicial.

  regioes = {"Sul", "Sudeste", "Centro Oeste", "Nordeste", "Norte"};
  legenda = {"totalmente imunizados", "parcialmente imunizados", "não imunizados"};

  % Item I
  [fname, fpath] = uigetfile(".xlsx", "Escolha o arquivo onde estao os dados");

  if fname != 0
    % Item II
    [dados, texto] = read_planilha(fname, fpath);

    % Itens III a V
    dados_por_estado = calcula_dados_por_estado(dados);

    % Item VI
    dados_por_regiao = calcula_dados_por_regiao(regioes, dados_por_estado, texto);

    % Item VII
    dados_porc_por_regiao = calcula_dados_porc_por_regiao(dados_por_regiao);

    % Itens VIII a IX
    plota_panorama(regioes, legenda, dados_porc_por_regiao);

    % Item X
    write_planilha(fname, fpath, regioes, legenda, dados_porc_por_regiao);
  endif

endfunction
