-- Criação da tabela "talentos".

CREATE TABLE                talentos (

talento_id NUMERIC(38)      NOT NULL,

classe VARCHAR(255)         NOT NULL,

nome VARCHAR(255)           NOT NULL,

CONSTRAINT                  talento_id 
                  
PRIMARY KEY                 (talento_id));


-- Comentário referente à criação da tabela "talentos".

COMMENT ON TABLE talentos IS 'Criação da tabela "talentos"';


-- Comentário referente à criação da coluna "talento_id" na tabela "talentos".

COMMENT ON COLUMN talentos.talento_id IS 'Criação da PK "talento_id" na tabela "talentos".';


-- Comentário referente à criação da coluna "categoria" na tabela "talentos".

COMMENT ON COLUMN talentos.classe IS 'Criação da coluna "categoria" na tabela "talentos".';


-- Comentário referente à criação da coluna "nome" na tabela "talentos".

COMMENT ON COLUMN talentos.nome IS 'Criação da coluna "nome" na tabela "talentos".';


-- Criação da tabela "usuarios".

CREATE TABLE                usuarios (

matricula_id                NUMERIC(38) NOT NULL,

nome                        VARCHAR(255) NOT NULL,

cargo                       VARCHAR(255) NOT NULL,

foto                        BYTEA NOT NULL,

CONSTRAINT                  matricula_id 

PRIMARY KEY                (matricula_id));


-- Comentário referente à criação da tabela "usuarios".

COMMENT ON TABLE usuarios IS 'Criação da tabela "usuarios"';


-- Comentário referente à criação da coluna "matricula_id" na tabela "usuarios".

COMMENT ON COLUMN usuarios.matricula_id IS 'Criação da PK "matricula_id" na tabela "usuarios".';


-- Comentário referente à criação da coluna "nome" na tabela "usuarios".

COMMENT ON COLUMN usuarios.nome IS 'Criação da coluna "nome" na tabela "usuarios".';


-- Comentário referente à criação da coluna "cargo" na tabela "usuarios".

COMMENT ON COLUMN usuarios.cargo IS 'Criação da coluna "cargo" na tabela "usuarios".';


-- Comentário referente à criação da coluna "foto" na tabela "usuarios".

COMMENT ON COLUMN usuarios.foto IS 'Criação da coluna "foto" na tabela "usuarios".';


-- Criação da tabela "publicacoes".

CREATE TABLE                  publicacoes (

publicacao_id                 NUMERIC(38) NOT NULL,

matricula_id                  NUMERIC(38) NOT NULL,

midia                         BYTEA,

titulo                        VARCHAR(255) NOT NULL,

descricao                     VARCHAR(512) NOT NULL,

numero_curtidas               NUMERIC(15) NOT NULL,

numero_comentarios            NUMERIC(38) NOT NULL,

CONSTRAINT                    publicacao_id      

PRIMARY KEY                   (publicacao_id));


-- Comentário referente à criação da tabela "publicacoes".

COMMENT ON TABLE publicacoes IS 'Criação da tabela "publicacoes"';


-- Comentário referente à criação da coluna "publicacao_id" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.publicacao_id IS 'Criação da PK "publicacao_id" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "matricula_id" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.matricula_id IS 'Criação da FK "matricula_id" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "midia" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.midia IS 'Criação da coluna "midia" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "titulo" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.titulo IS 'Criação da coluna "titulo" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "titulo" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.descricao IS 'Criação da coluna "descricao" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "numero_curtidas" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.numero_curtidas IS 'Criação da coluna "numero_curtidas" na tabela "publicacoes".';


-- Comentário referente à criação da coluna "numero_comentarios" na tabela "publicacoes".

COMMENT ON COLUMN publicacoes.numero_comentarios IS 'Criação da coluna "numero_comentarios" na tabela "publicacoes".';


-- Criação da tabela "comentarios".

CREATE TABLE              comentarios (

comentario_id             NUMERIC(38) NOT NULL,

publicacao_id             NUMERIC(38) NOT NULL,

conteudo_comentario       VARCHAR(512) NOT NULL,

CONSTRAINT                comentario_id 

PRIMARY KEY               (comentario_id, publicacao_id));


-- Comentário referente à criação da tabela "comentarios".

COMMENT ON TABLE comentarios IS 'Criação da tabela "comentarios"';


-- Comentário referente à criação da coluna "comentario_id" na tabela "comentarios".

COMMENT ON COLUMN comentarios.comentario_id IS 'Criação da PK "comentario_id" na tabela "comentarios".';


-- Comentário referente à criação da coluna "publicacao_id" na tabela "comentarios".

COMMENT ON COLUMN comentarios.publicacao_id IS 'Criação da PFK "publicacao_id" na tabela "comentarios".';


-- Comentário referente à criação da coluna "conteudo_comentario" na tabela "comentarios".

COMMENT ON COLUMN comentarios.conteudo_comentario IS 'Criação da coluna "conteudo_comentario" na tabela "comentarios".';


-- Criação da tabela "respostas_comentarios".

CREATE TABLE        respostas_comentarios (

resposta_id         NUMERIC(38) NOT NULL,

comentario_id       NUMERIC(38) NOT NULL,

publicacao_id       NUMERIC(38) NOT NULL,

conteudo_respostas  VARCHAR(512) NOT NULL,

CONSTRAINT          resposta_id 

PRIMARY KEY         (resposta_id, comentario_id, publicacao_id));


-- Comentário referente à criação da tabela "respostas_comentarios".

COMMENT ON TABLE respostas_comentarios IS 'Criação da tabela "respostas_comentarios"';


-- Comentário referente à criação da coluna "resposta_id" na tabela "respostas-comentarios".

COMMENT ON COLUMN respostas_comentarios.resposta_id IS 'Criação da PK "resposta_id" na tabela "respostas-comentarios".';


-- Comentário referente à criação da coluna "comentario_id" na tabela "respostas-comentarios".

COMMENT ON COLUMN respostas_comentarios.comentario_id IS 'Criação da PFK "comentario_id" na tabela "respostas-comentarios".';


-- Comentário referente à criação da coluna "publicacao_id" na tabela "respostas-comentarios".

COMMENT ON COLUMN respostas_comentarios.publicacao_id IS 'Criação da PFK "publicacao_id" na tabela "respostas-comentarios".';


-- Comentário referente à criação da coluna "conteudo_respostas" na tabela "respostas-comentarios".

COMMENT ON COLUMN respostas_comentarios.conteudo_respostas IS 'Criação da coluna "conteudo_respostas" na tabela "respostas-comentarios".';


-- Criação da tabela "comunidades".

CREATE TABLE        comunidades (

comunidade_id       NUMERIC(38) NOT NULL,

matricula_id        NUMERIC(38) NOT NULL,

talento_id          NUMERIC(38) NOT NULL,

nome                VARCHAR(255) NOT NULL,

numero_membros      NUMERIC(38) NOT NULL,

CONSTRAINT          comunidade_id 

PRIMARY KEY         (comunidade_id));


-- Comentário referente à criação da tabela "comunidades".

COMMENT ON TABLE comunidades IS 'Criação da tabela "comunidades"';


-- Comentário referente à criação da coluna "comunidade_id" na tabela "comunidades".

COMMENT ON COLUMN comunidades.comunidade_id IS 'Criação da PK "comunidade_id" na tabela "comunidades".';


-- Comentário referente à criação da coluna "matricula_id" na tabela "comunidades".

COMMENT ON COLUMN comunidades.matricula_id IS 'Criação da FK "matricula_id" na tabela "comunidades".';


-- Comentário referente à criação da coluna "talento_id" na tabela "comunidades".

COMMENT ON COLUMN comunidades.talento_id IS 'Criação da FK "talento_id" na tabela "comunidades".';


-- Comentário referente à criação da coluna "nome" na tabela "comunidades".

COMMENT ON COLUMN comunidades.nome IS 'Criação da coluna "nome" na tabela "comunidades".';


-- Comentário referente à criação da coluna "numero_membros" na tabela "comunidades".

COMMENT ON COLUMN comunidades.numero_membros IS 'Criação da coluna "numero_membros" na tabela "comunidades".';


-- Criação da tabela "mensagens".

CREATE TABLE          mensagens (

mensagem_id           NUMERIC(38) NOT NULL,

matricula_id          NUMERIC(38) NOT NULL,

midia                 BYTEA,

conteudo_mensagens    VARCHAR(512) NOT NULL,

CONSTRAINT            mensagem_id 

PRIMARY KEY          (mensagem_id));


-- Comentário referente à criação da tabela "mensagens".

COMMENT ON TABLE mensagens IS 'Criação da tabela "mensagens"';


-- Comentário referente à criação da coluna "mensagem_id" na tabela "mensagens".

COMMENT ON COLUMN mensagens.mensagem_id IS 'Criação da PK "mensagem_id" na tabela "mensagens".';


-- Comentário referente à criação da coluna "matricula_id" na tabela "mensagens".

COMMENT ON COLUMN mensagens.matricula_id IS 'Criação da FK "matricula_id" na tabela "mensagens".';


-- Comentário referente à criação da coluna "midia" na tabela "mensagens".

COMMENT ON COLUMN mensagens.midia IS 'Criação da coluna "midia" na tabela "mensagens".';


-- Comentário referente à criação da coluna "conteudo_mensagens" na tabela "mensagens".

COMMENT ON COLUMN mensagens.conteudo_mensagens IS 'Criação da coluna "conteudo_mensagens" na tabela "mensagens".';


-- Criação do relacionamento entre a tabela "comunidades" e a tabela "talentos".

ALTER TABLE         comunidades 

ADD CONSTRAINT      talentos_comunidades_fk

FOREIGN KEY         (talento_id)

REFERENCES          talentos (talento_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Criação do relacionamento entre a tabela "mensagens" e a tabela "usuarios".

ALTER TABLE mensagens 

ADD CONSTRAINT usuarios_mensagens_fk

FOREIGN KEY (matricula_id)

REFERENCES usuarios (matricula_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Criação do relacionamento entre a tabela "comunidades" e a tabela "usuarios".

ALTER TABLE         comunidades 

ADD CONSTRAINT      usuarios_comunidades_fk

FOREIGN KEY         (matricula_id)

REFERENCES          usuarios (matricula_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Criação do relacionamento entre a tabela "publicacoes" e a tabela "usuarios".

ALTER TABLE         publicacoes 

ADD CONSTRAINT      usuarios_publicacoes_fk

FOREIGN KEY         (matricula_id)

REFERENCES          usuarios (matricula_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Criação do relacionamento entre a tabela "comentarios" e a tabela "publicacoes".

ALTER TABLE         comentarios 

ADD CONSTRAINT      publicacoes_comentarios_fk

FOREIGN KEY         (publicacao_id)

REFERENCES          publicacoes (publicacao_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Criação do relacionamento entre a tabela "respostas_comentarios" e a tabela "comentarios".

ALTER TABLE         respostas_comentarios 

ADD CONSTRAINT      comentarios_respostas_comentarios_fk

FOREIGN KEY         (publicacao_id, comentario_id)

REFERENCES          comentarios (publicacao_id, comentario_id)

ON DELETE NO ACTION

ON UPDATE NO ACTION

NOT DEFERRABLE;


-- Restrição de checagem na coluna "publicacao_id" da tabela "publicacoes".


ALTER TABLE       publicacoes

ADD CONSTRAINT    cc_publicacoes_publicacao_id

CHECK             (publicacoes.publicacao_id > 0);


-- Restrição de checagem na coluna "comentario_id" da tabela "comentarios".

ALTER TABLE       comentarios

ADD CONSTRAINT    cc_comentarios_comentario_id

CHECK             (comentarios.comentario_id > 0);


-- Restrição de checagem na coluna "resposta_id" da tabela "respostas_comentarios".


ALTER TABLE       respostas_comentarios

ADD CONSTRAINT    cc_respostas_comentarios_resposta_id

CHECK             (respostas_comentarios.resposta_id > 0);


-- Restrição de checagem na coluna "comentario_id" da tabela "respostas_comentarios".

ALTER TABLE       respostas_comentarios

ADD CONSTRAINT    cc_respostas_comentarios_comentario_id

CHECK             (respostas_comentarios.comentario_id > 0);


-- Restrição de checagem na coluna "publicacao_id" da tabela "respostas_comentarios".

ALTER TABLE       respostas_comentarios

ADD CONSTRAINT    cc_respostas_comentarios_publicacao_id

CHECK             (respostas_comentarios.publicacao_id > 0);


-- Restrição de checagem na coluna "talento_id" da tabela "talentos".

ALTER TABLE       talentos

ADD CONSTRAINT    cc_talentos_talento_id

CHECK             (talentos.talento_id > 0);


-- Restrição de checagem na coluna "comunidade_id" da tabela "comunidades".

ALTER TABLE       comunidades

ADD CONSTRAINT    cc_comunidades_comunidade_id

CHECK             (comunidades.comunidade_id > 0);


-- Restrição de checagem na coluna "matricula_id" da tabela "usuarios".

ALTER TABLE       usuarios

ADD CONSTRAINT    cc_usuarios_matricula_id

CHECK             (usuarios.matricula_id > 0);


-- Restrição de checagem na coluna "mensagem_id" da tabela "mensagens".


ALTER TABLE       mensagens

ADD CONSTRAINT    cc_mensagens_mensagem_id

CHECK             (mensagens.mensagem_id > 0);


-- Restrição de checagem na coluna "numero_curtidas" da tabela "publicacoes".

ALTER TABLE       publicacoes

ADD CONSTRAINT    cc_publicacoes_numero_curtidas

CHECK             (publicacoes.numero_curtidas >= 0);


-- Restrição de checagem na coluna "numero_comentarios" da tabela "publicacoes".

ALTER TABLE       publicacoes

ADD CONSTRAINT    cc_publicacoes_numero_comentarios

CHECK             (publicacoes.numero_comentarios >= 0);


-- Restrição de checagem na coluna "numero_membros" da tabela "comunidades".

ALTER TABLE       comunidades

ADD CONSTRAINT    cc_comunidades_numero_membros

CHECK             (comunidades.numero_membros > 0);
