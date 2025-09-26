-- ## 3. Modelagem de Sistema
-- Escolher um sistema simples (ex: escola, loja, hospital) e:
-- - Desenhar as tabelas necessárias
-- - Definir os relacionamentos
-- - Justificar as escolhas de tipos de dados
-- - Identificar chaves primárias e estrangeiras


CREATE TABLE "Clientes" (
    "id" bigint NOT NULL,
    "nome" varchar NOT NULL,
    "telefone" varchar NOT NULL,
    "email" varchar NOT NULL,
    CONSTRAINT "pk_table_1_id" PRIMARY KEY ("id")
);

CREATE TABLE "Veiculos" (
    "id" bigint NOT NULL,
    "cliente_id" bigint NOT NULL,
    "placa" varchar NOT NULL,
    "modelo" varchar NOT NULL,
    "ano" integer NOT NULL,
    CONSTRAINT "pk_table_2_id" PRIMARY KEY ("id")
);

CREATE TABLE "Mecanico" (
    "id" bigint NOT NULL,
    "nome" varchar NOT NULL,
    "especialidade" varchar NOT NULL,
    CONSTRAINT "pk_table_3_id" PRIMARY KEY ("id")
);

CREATE TABLE "Serviços" (
    "id" bigint NOT NULL,
    "descrição" varchar NOT NULL,
    "preço" numeric NOT NULL,
    CONSTRAINT "pk_table_4_id" PRIMARY KEY ("id")
);

CREATE TABLE "Ordem de Serviços (OS)" (
    "id" bigint NOT NULL,
    "cliente_id" bigint NOT NULL,
    "carro_id" bigint NOT NULL,
    "mecanico_id" bigint NOT NULL,
    "serviço_id" bigint NOT NULL,
    "data de inicio" date NOT NULL,
    "data de termino" bigint,
    CONSTRAINT "pk_table_5_id" PRIMARY KEY ("id")
);

-- Foreign key constraints
-- Schema: public
ALTER TABLE "Veiculos" ADD CONSTRAINT "fk_Veiculos_cliente_id_Clientes_id" FOREIGN KEY("cliente_id") REFERENCES "Clientes"("id");
ALTER TABLE "Ordem de Serviços (OS)" ADD CONSTRAINT "fk_Ordem_de_Servi_os__OS__cliente_id_Clientes_id" FOREIGN KEY("cliente_id") REFERENCES "Clientes"("id");
ALTER TABLE "Ordem de Serviços (OS)" ADD CONSTRAINT "fk_Ordem_de_Servi_os__OS__carro_id_Veiculos_id" FOREIGN KEY("carro_id") REFERENCES "Veiculos"("id");
ALTER TABLE "Ordem de Serviços (OS)" ADD CONSTRAINT "fk_Ordem_de_Servi_os__OS__mecanico_id_Mecanico_id" FOREIGN KEY("mecanico_id") REFERENCES "Mecanico"("id");
ALTER TABLE "Ordem de Serviços (OS)" ADD CONSTRAINT "fk_Ordem_de_Servi_os__OS__servi_o_id_Servi_os_id" FOREIGN KEY("serviço_id") REFERENCES "Serviços"("id");