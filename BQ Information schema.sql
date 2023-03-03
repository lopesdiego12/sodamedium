/*
Reuni todos os INFORMATION_SCHEMA que existem hoje no BigQuery afim de facilitar o seu uso.
*/

--Quando você consulta a visualização INFORMATION_SCHEMA.SCHEMATA, os resultados dessa consulta contêm uma linha para cada conjunto de dados no projeto ao qual o usuário atual tem acesso.
SELECT * FROM region-us.INFORMATION_SCHEMA.SCHEMATA; --Quando você consulta a visualização INFORMATION_SCHEMA.SCHEMATA, os resultados dessa consulta contêm uma linha para cada conjunto de dados no projeto ao qual o usuário atual tem acesso.
SELECT * FROM region-us.INFORMATION_SCHEMA.SCHEMATA_OPTIONS; --Quando você consulta a visualização INFORMATION_SCHEMA.SCHEMATA_OPTIONS, os resultados da consulta contêm uma linha para cada opção de cada conjunto de dados em um projeto.

--Quando você consulta as visualizações INFORMATION_SCHEMA.JOBS_BY_*, os resultados da consulta contêm uma linha para cada job do BigQuery.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_BY_USER LIMIT 100; --retorna apenas os jobs enviados pelo usuário atual no projeto atual.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_BY_PROJECT LIMIT 100; --retorna todos os jobs enviados no projeto atual.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_BY_FOLDER LIMIT 100; --retorna todos os jobs enviados na pasta pai do projeto atual, incluindo os jobs em subpastas abaixo dele.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_BY_ORGANIZATION LIMIT 100; --retorna todos os jobs enviados na organização que está associada ao projeto atual.

--Ao consultar as visualizações INFORMATION_SCHEMA.JOBS_TIMELINE_BY_*, os resultados da consulta terão uma linha para cada segundo de execução de cada job do BigQuery. Cada período começa em um intervalo de segundo inteiro e dura exatamente um segundo.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_USER LIMIT 100; --retorna apenas os jobs enviados pelo usuário atual no projeto atual.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_PROJECT LIMIT 100; --retorna todos os jobs enviados no projeto atual.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_FOLDER LIMIT 100; --retorna todos os jobs enviados na pasta pai do projeto atual, incluindo os jobs em subpastas abaixo dele.
SELECT * FROM region-us.INFORMATION_SCHEMA.JOBS_TIMELINE_BY_ORGANIZATION LIMIT 100; --retorna todos os jobs enviados na pasta pai do projeto atual, incluindo os jobs em subpastas abaixo dele.

--Quando você consulta as visualizações de reserva INFORMATION_SCHEMA, os resultados contêm dados sobre as reservas do BigQuery
SELECT * FROM region-us.INFORMATION_SCHEMA.RESERVATION_CHANGES_BY_PROJECT LIMIT 100; --contém uma lista de todas as alterações nas reservas no projeto de administração. Cada linha representa uma alteração em uma única reserva.
SELECT * FROM region-us.INFORMATION_SCHEMA.RESERVATIONS_BY_PROJECT LIMIT 100; --contém uma lista de todas as reservas atuais no projeto de administração. Cada linha representa uma única reserva atual. Uma reserva atual é uma reserva que não foi excluída.
SELECT * FROM region-us.INFORMATION_SCHEMA.CAPACITY_COMMITMENT_CHANGES_BY_PROJECT LIMIT 100; --contém uma lista de todas as alterações nos compromissos de capacidade no projeto de administração. Cada linha representa uma única alteração em um único compromisso de capacidade.
SELECT * FROM region-us.INFORMATION_SCHEMA.CAPACITY_COMMITMENTS_BY_PROJECT LIMIT 100; --contém uma lista de todos os compromissos de capacidade atuais no projeto de administração. Cada linha representa um compromisso de capacidade único e atual. Um compromisso de capacidade atual está pendente ou ativo e não foi excluído.
SELECT * FROM region-us.INFORMATION_SCHEMA.ASSIGNMENT_CHANGES_BY_PROJECT LIMIT 100; --contém uma lista de todas as alterações nas atribuições no projeto de administração. Cada linha representa uma única alteração em uma única atribuição.
SELECT * FROM region-us.INFORMATION_SCHEMA.ASSIGNMENTS_BY_PROJECT LIMIT 100; --contém uma lista de todas as atribuições atuais no projeto de administração. Cada linha representa uma única atribuição atual. Uma atribuição atual está pendente ou ativa e não foi excluída.

--Quando você consulta as visualizações de streaming de INFORMATION_SCHEMA, os resultados da consulta contêm informações históricas e em tempo real sobre dados de streaming no BigQuery. Cada linha nas visualizações a seguir representa estatísticas para streaming em uma tabela específica, agregadas em um intervalo de um minuto a partir de start_timestamp. As estatísticas são agrupadas por código de erro. Portanto, haverá uma linha para cada código de erro encontrado durante o intervalo de um minuto para cada combinação de carimbo de data/hora e tabela. As solicitações bem-sucedidas têm o código de erro definido como NULL. Se nenhum dado foi transmitido para uma tabela durante um determinado período, nenhuma linha estará presente para os carimbos de data/hora correspondentes dessa tabela.
SELECT * FROM region-us.INFORMATION_SCHEMA.STREAMING_TIMELINE_BY_PROJECT LIMIT 100; --contém estatísticas de streaming agregadas por minuto do projeto atual.
SELECT * FROM region-us.INFORMATION_SCHEMA.STREAMING_TIMELINE_BY_FOLDER LIMIT 100; --contém estatísticas de streaming agregadas por minuto para a pasta pai do projeto atual, incluindo as subpastas.
--SELECT * FROM region-us.INFORMATION_SCHEMA.STREAMING_TIMELINE_BY_ORGANIZATION LIMIT 100; --contém estatísticas de streaming agregadas por minuto de toda a organização associada ao projeto atual.

--contém estas visualizações para os metadados da rotina (procedure)
SELECT * FROM region-us.INFORMATION_SCHEMA.ROUTINES LIMIT 100; --os resultados da consulta contêm uma linha para cada rotina em um conjunto de dados.
SELECT * FROM region-us.INFORMATION_SCHEMA.ROUTINE_OPTIONS LIMIT 100; --os resultados da consulta contêm uma linha para cada opção de cada rotina em um conjunto de dados.
SELECT * FROM region-us.INFORMATION_SCHEMA.PARAMETERS LIMIT 100; --os resultados da consulta contêm uma linha para cada parâmetro de cada rotina em um conjunto de dados.

--contém estas visualizações para metadados de tabela:
SELECT * FROM region-us.INFORMATION_SCHEMA.TABLES  LIMIT 100; --para metadados sobre tabelas
SELECT * FROM region-us.INFORMATION_SCHEMA.TABLE_OPTIONS LIMIT 100; --para metadados sobre tabelas
SELECT * FROM region-us.INFORMATION_SCHEMA.COLUMNS  LIMIT 100; --para metadados sobre colunas e campos
SELECT * FROM region-us.INFORMATION_SCHEMA.COLUMN_FIELD_PATHS   LIMIT 100; --para metadados sobre colunas e campos
--SELECT * FROM region-us.INFORMATION_SCHEMA.PARTITIONS  LIMIT 100; --para metadados de partições de tabela

--contém metadados sobre visualizações (Views)
SELECT * FROM region-us.INFORMATION_SCHEMA.VIEWS  LIMIT 100; --os resultados da consulta contêm uma linha para cada visualização em um conjunto de dados.
