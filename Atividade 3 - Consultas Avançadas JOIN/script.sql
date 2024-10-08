CREATE TABLE public.customer (
	id int4 NOT NULL,
	name varchar(100) NULL,
	email varchar(100) NULL,
	cgc varchar(100) NULL,
	gender varchar(100) NULL,
	phone varchar(100) NULL,
	status int4 NULL DEFAULT 0,
	msg varchar(1000) NULL,
	createdat timestamp NULL DEFAULT now(),
	CONSTRAINT pk_customer PRIMARY KEY (id)
);

CREATE TABLE public.customer_address (
	customer_id int4 NOT NULL,
	zipcode varchar(10) NULL,
	street varchar(100) NULL,
	"number" varchar(20) NULL,
	detail varchar(100) NULL,
	district varchar(100) NULL,
	city varchar(100) NULL,
	state varchar(10) NULL,
	city_ibge_id varchar(20) NULL,
	status int4 NULL DEFAULT 0,
	msg varchar(1000) NULL,
	createdat timestamp NULL DEFAULT now(),
	CONSTRAINT pk_customer_address PRIMARY KEY (customer_id),
	CONSTRAINT customer_address_fk FOREIGN KEY (customer_id) REFERENCES customer(id)
);

CREATE TABLE public.orders (
	id int4 NOT NULL,
	total numeric(15,4) NULL,
	discount numeric(15,4) NULL,
	order_status varchar(20) NULL,
	payment_status varchar(20) NULL,
	fulfillment_status varchar(20) NULL,
	customer_id int4 NULL,
	status int4 NULL DEFAULT 0,
	msg varchar(1000) NULL,
	createdat timestamp NULL DEFAULT now(),
	code varchar(20) NULL,
	CONSTRAINT pk_orders PRIMARY KEY (id),
	CONSTRAINT orders_fk FOREIGN KEY (customer_id) REFERENCES customer(id)
);


CREATE TABLE public.items (
	id int4 NOT NULL,
	id_item int4 NOT NULL,
	variation_id int4 NULL,
	external_id varchar(100) NULL,
	"name" varchar(100) NULL,
	reference varchar(100) NULL,
	variation varchar(100) NULL,
	discount numeric(15,2) NULL,
	price numeric(15,2) NULL,
	sku varchar(100) NULL,
	quantity int4 NULL,
	total numeric(15,2) NULL,
	is_gift bool NULL,
	is_cover int4 NULL,
	createdat timestamp NULL DEFAULT now(),
	CONSTRAINT pk_items PRIMARY KEY (id, id_item),
	CONSTRAINT items_fk FOREIGN KEY (id) REFERENCES orders(id)
);


/* INSERT Customers */
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (2498793,'emilia ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-26 09:19:19'),
	 (2478005,'Thaís ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-26 13:39:16'),
	 (2514407,'Terezinha ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-26 14:39:16'),
	 (2500126,'Maidi ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-27 08:18:57'),
	 (2501350,'Lorena ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-27 08:18:59'),
	 (2567842,'Vera ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-30 08:18:55'),
	 (2575197,'Anelisa ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-30 08:18:58'),
	 (2517876,'Jéssica ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-27 11:38:51'),
	 (2534197,'Barbara ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-28 08:38:51'),
	 (2529295,'CRISTINA ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-28 09:18:51');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (2629327,'Flanksmeire ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-03 08:02:25'),
	 (2535876,'Ariane ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-29 08:18:53'),
	 (2461397,'Renan ','email@padrao.com.br','00000000000','male','9999-99999',2,'','2021-01-25 10:04:10'),
	 (2488514,'Amanda ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-26 04:25:44'),
	 (2064471,'Ana ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-26 04:25:46'),
	 (2567762,'Kenneth ','email@padrao.com.br','00000000000','male','9999-99999',2,'','2021-01-30 08:18:56'),
	 (2495768,'Maristela ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 16:25:43'),
	 (2496642,'Rafaela ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 17:45:43'),
	 (2440791,'Inajá ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:55:46'),
	 (2443932,'GILSON ','email@padrao.com.br','00000000000','male','9999-99999',2,'','2021-01-25 08:56:03');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (2444015,'Andressa ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:56:47'),
	 (2446718,'luciana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:56:50'),
	 (2425227,'Ana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:56:52'),
	 (1486776,'Edna ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-25 08:56:53'),
	 (2450169,'Débora ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:56:58'),
	 (2453603,'Fernanda ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:56:59'),
	 (2551463,'Patrícia ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-28 17:18:52'),
	 (2455753,'Bianca ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:57:01'),
	 (2459273,'Eliete ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:57:03'),
	 (2461487,'Cecilia ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:57:06');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (1631179,'Claudia ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-25 08:57:08'),
	 (2476264,'Juliana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-25 08:57:11'),
	 (2522026,'Fabiana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-29 08:18:54'),
	 (2481747,'Keila ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-26 04:25:45'),
	 (2475095,'Mariane ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-26 04:25:48'),
	 (2518911,'Rosiléa ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-27 08:18:52'),
	 (2374322,'Adriana ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-27 08:18:58'),
	 (2495728,'Vera ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-27 08:19:00'),
	 (1375696,'Marilene ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-01-28 08:38:53'),
	 (2631026,'Izabele ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-03 10:42:25');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (2595648,'Joyce ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-01-31 17:58:55'),
	 (2590623,'Wilson ','email@padrao.com.br','00000000000','male','9999-99999',2,'','2021-01-31 10:18:54'),
	 (1123864,'Roberta ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-02-01 08:18:55'),
	 (2642866,'Juliana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-03 10:42:28'),
	 (2491187,'Irani ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-03 15:23:11'),
	 (2654253,'Maria ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-04 08:03:11'),
	 (2630902,'Sonia ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-04 08:03:12'),
	 (2629530,'Elana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-04 08:03:15'),
	 (2567482,'Ana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-01 10:18:53'),
	 (2591072,'Joao ','email@padrao.com.br','00000000000','male','9999-99999',2,'','2021-02-01 10:18:57');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (1177056,'ELI ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-02-01 11:18:53'),
	 (2606039,'Fabiana ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-01 13:18:53'),
	 (2609330,'Silmara ','email@padrao.com.br','00000000000','female','9999-99999',0,'','2021-02-01 17:58:53'),
	 (2611683,'Denise ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:18:53'),
	 (2611841,'Rosania ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:18:54'),
	 (2576918,'Gislaine ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:18:58'),
	 (2581017,'Ivanize ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:18:59'),
	 (2564082,'Mônica ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:19:00'),
	 (2591657,'Lívia ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:19:01'),
	 (2585853,'Alda ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:19:02');
INSERT INTO public.customer (id,"name",email,cgc,gender,phone,status,msg,createdat) VALUES
	 (2610230,'Joanilda ','email@padrao.com.br','00000000000','female','9999-99999',2,'','2021-02-02 08:19:03');
	
	
/* INSERT Customer Address */
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2498793,'38040725','Rua Criptografada','00002','casa 281 ','Recreio dos Bandeirantes','Uberaba','MG','3170107',0,'','2021-01-26 09:19:19'),
	 (2478005,'37412380','Rua Criptografada','00002','Casa','Bela Vista','Três Corações','MG','3169307',0,'','2021-01-26 13:39:16'),
	 (2514407,'18200358','Rua Criptografada','00002','','Centro','Itapetininga','SP','3522307',0,'','2021-01-26 14:39:16'),
	 (2518911,'89801061','Rua Criptografada','00002','apto 1202','Maria Goretti','Chapecó','SC','4204202',0,'','2021-01-27 08:18:52'),
	 (2500126,'88705775','Rua Criptografada','00002','Casa','Recife','Tubarão','SC','4218707',0,'','2021-01-27 08:18:57'),
	 (2374322,'14808100','Rua Criptografada','00002','Motel Magnus','Jardim Arco-Íris','Araraquara','SP','3503208',0,'','2021-01-27 08:18:58'),
	 (2501350,'35970000','Rua Criptografada','00002','','Centro','Barão de Cocais','MG','3105400',0,'','2021-01-27 08:18:59'),
	 (2495768,'17400000','Rua Criptografada','00002','Casa ','Centro','Garça','SP','3516705',0,'','2021-01-25 16:25:43'),
	 (2496642,'04105060','Rua Criptografada','00002','Apartamento 43','Vila Mariana','São Paulo','SP','3550308',0,'','2021-01-25 17:45:43'),
	 (2495728,'05126100','Rua Criptografada','00002','','Parque São Domingos','São Paulo','SP','3550308',0,'','2021-01-27 08:19:00');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2517876,'45020365','Rua Criptografada','00002','Caminho do Parque','Recreio','Vitória da Conquista','BA','2933307',0,'','2021-01-27 11:38:51'),
	 (2440791,'12233040','Rua Criptografada','00002','Casa','Bosque dos Eucaliptos','São José dos Campos','SP','3549904',0,'','2021-01-25 08:55:46'),
	 (2443932,'37215000','Rua Criptografada','00002','CASA','CENTRO','Ingaí','MG','3130804',0,'','2021-01-25 08:56:03'),
	 (2534197,'19600000','Rua Criptografada','00002','','Yolanda','Rancharia','SP','3542206',0,'','2021-01-28 08:38:51'),
	 (1375696,'85801080','Rua Criptografada','00002','Apto 1603','Centro','Cascavel','PR','4104808',0,'','2021-01-28 08:38:53'),
	 (2529295,'88336210','Rua Criptografada','00002','Galpão 05','Nova Esperança','Balneário Camboriú','SC','4202008',0,'','2021-01-28 09:18:51'),
	 (2551463,'36544000','Rua Criptografada','00002','Ap.05','Centro','Paula Cândido','MG','3148301',0,'','2021-01-28 17:18:52'),
	 (2535876,'83540000','Rua Criptografada','00002','casa','centro','Rio Branco do Sul','PR','4122206',0,'','2021-01-29 08:18:53'),
	 (2522026,'06774090','Rua Criptografada','00002','Proximo ao Poupa Tempo','Vila Carmelina Gonçalves','Taboão da Serra','SP','3552809',0,'','2021-01-29 08:18:54'),
	 (2654253,'03136040','Rua Criptografada','00002','','Vila Prudente','São Paulo','SP','3550308',0,'','2021-02-04 08:03:11');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2630902,'04068110','Rua Criptografada','00002','','Planalto Paulista','São Paulo','SP','3550308',0,'','2021-02-04 08:03:12'),
	 (2629530,'77720000','Rua Criptografada','00002','Casa Rural ','Setor Pinheiro ','Itacajá','TO','1710508',0,'','2021-02-04 08:03:15'),
	 (2590623,'13184110','Rua Criptografada','00002','Casa','Parque Ortolândia','Hortolândia','SP','3519071',0,'','2021-01-31 10:18:54'),
	 (2444015,'39680000','Rua Criptografada','00002','','Centro ','Capelinha','MG','3112307',0,'','2021-01-25 08:56:47'),
	 (2446718,'11740000','Rua Criptografada','00002','casa','centro','Itanhaém','SP','3522109',0,'','2021-01-25 08:56:50'),
	 (2425227,'66035220','Rua Criptografada','00002','400','Nazaré','Belém','PA','1501402',0,'','2021-01-25 08:56:52'),
	 (1486776,'31330250','Rua Criptografada','00002','Apto 801 ','Castelo','Belo Horizonte','MG','3106200',0,'','2021-01-25 08:56:53'),
	 (2450169,'70773080','Rua Criptografada','00002','','Asa Norte','Brasília','DF','5300108',0,'','2021-01-25 08:56:58'),
	 (2453603,'87080530','Rua Criptografada','00002','','Vila Santa Izabel','Maringá','PR','4115200',0,'','2021-01-25 08:56:59'),
	 (2455753,'26255330','Rua Criptografada','00002','Apto. 2005 Bloco B','Palmeiras','Nova Iguaçu','RJ','3303500',0,'','2021-01-25 08:57:01');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2459273,'18271580','Rua Criptografada','00002','','Vila Doutor Laurindo','Tatuí','SP','3554003',0,'','2021-01-25 08:57:03'),
	 (2461487,'13342112','Rua Criptografada','00002','Casa','Vale das Laranjeiras','Indaiatuba','SP','3520509',0,'','2021-01-25 08:57:06'),
	 (1631179,'17065430','Rua Criptografada','00002','','Núcleo Habitacional Vereador Edson Francisco da Silva','Bauru','SP','3506003',0,'','2021-01-25 08:57:08'),
	 (2476264,'31720210','Rua Criptografada','00002','Ap 202','Planalto','Belo Horizonte','MG','3106200',0,'','2021-01-25 08:57:11'),
	 (2488514,'04610001','Rua Criptografada','00002','Ap 175A','Parque Colonial','São Paulo','SP','3550308',0,'','2021-01-26 04:25:44'),
	 (2481747,'13042105','Rua Criptografada','00002','Ap 134 torre A','Vila Marieta','Campinas','SP','3509502',0,'','2021-01-26 04:25:45'),
	 (2064471,'18557608','Rua Criptografada','00002','','Jardim Bela Vista','Boituva','SP','3507001',0,'','2021-01-26 04:25:46'),
	 (2475095,'89150000','Rua Criptografada','00002','','Centro','Presidente Getúlio','SC','4214003',0,'','2021-01-26 04:25:48'),
	 (2461397,'27925200','Rua Criptografada','00002','','Lagoa','Macaé','RJ','3302403',0,'','2021-01-25 10:04:10'),
	 (2567842,'04117040','Rua Criptografada','00002','Apartamento 111','Vila Mariana','São Paulo','SP','3550308',0,'','2021-01-30 08:18:55');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2567762,'11420000','Rua Criptografada','00002','Apto 162','Vila Alzira','Guarujá','SP','3518701',0,'','2021-01-30 08:18:56'),
	 (2575197,'13466300','Rua Criptografada','00002','Apto 61','Vila Santa Catarina','Americana','SP','3501608',0,'','2021-01-30 08:18:58'),
	 (2611683,'02432040','Rua Criptografada','00002','Casa','Vila Mariza Mazzei','São Paulo','SP','3550308',0,'','2021-02-02 08:18:53'),
	 (2595648,'88811030','Rua Criptografada','00002','','Cruzeiro do Sul','Criciúma','SC','4204608',0,'','2021-01-31 17:58:55'),
	 (2567482,'11629257','Rua Criptografada','00002','','São Francisco da Praia','São Sebastião','SP','3550704',0,'','2021-02-01 10:18:53'),
	 (2591072,'18057120','Rua Criptografada','00002','M43','Jardim Villagio Milano','Sorocaba','SP','3552205',0,'','2021-02-01 10:18:57'),
	 (1177056,'18271580','Rua Criptografada','00002','PROX A GRANTEL','Vila Doutor Laurindo','Tatuí','SP','3554003',0,'','2021-02-01 11:18:53'),
	 (2606039,'80620070','Rua Criptografada','00002','AP 602','Água Verde','Curitiba','PR','4106902',0,'','2021-02-01 13:18:53'),
	 (2609330,'82630308','Rua Criptografada','00002','Sobrado 2','Atuba','Curitiba','PR','4106902',0,'','2021-02-01 17:58:53'),
	 (2611841,'88860000','Rua Criptografada','00002','','Centro','Siderópolis','SC','4217600',0,'','2021-02-02 08:18:54');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2576918,'13056410','Rua Criptografada','00002','Casa dos fundos ','Parque Dom Pedro II','Campinas','SP','3509502',0,'','2021-02-02 08:18:58'),
	 (2581017,'49048390','Rua Criptografada','00002','Cond. Repletto bl. Arbore 802','Luzia','Aracaju','SE','2800308',0,'','2021-02-02 08:18:59'),
	 (2564082,'04336160','Rua Criptografada','00002','','Americanópolis','São Paulo','SP','3550308',0,'','2021-02-02 08:19:00'),
	 (2591657,'67040790','Rua Criptografada','00002','Qd: 08','Centro','Ananindeua','PA','1500800',0,'','2021-02-02 08:19:01'),
	 (2585853,'47650000','Rua Criptografada','00002','Loja','Félix Araújo','Correntina','BA','2909307',0,'','2021-02-02 08:19:02'),
	 (2610230,'88802110','Rua Criptografada','00002','Apto 402','Centro','Criciúma','SC','4204608',0,'','2021-02-02 08:19:03'),
	 (2629327,'31080170','Rua Criptografada','00002','Apto/402','Santa Inês','Belo Horizonte','MG','3106200',0,'','2021-02-03 08:02:25'),
	 (2631026,'83820491','Rua Criptografada','00002','','Eucaliptos','Fazenda Rio Grande','PR','4107652',0,'','2021-02-03 10:42:25'),
	 (2642866,'72650505','Rua Criptografada','00002','Casa 38','Recanto das Emas','Brasília','DF','5300108',0,'','2021-02-03 10:42:28'),
	 (1123864,'06700153','Rua Criptografada','00002','Apt 201A B 05','Centro','Cotia','SP','3513009',0,'','2021-02-01 08:18:55');
INSERT INTO public.customer_address (customer_id,zipcode,street,"number",detail,district,city,state,city_ibge_id,status,msg,createdat) VALUES
	 (2491187,'35500011','Rua Criptografada','00002','801','Centro','Divinópolis','MG','3122306',0,'','2021-02-03 15:23:11');
	
/* INSERT Orders */
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4383438,388.7100,0.0000,'open','approved','unfulfilled',2459273,2,'','2021-01-25 08:57:03','2067'),
	 (4431979,132.8600,0.0000,'open','approved','unfulfilled',2475095,0,'','2021-01-25 11:40:14','2085'),
	 (4386941,90.0200,0.0000,'open','approved','unfulfilled',2461487,2,'','2021-01-25 08:57:06','2070'),
	 (4389346,341.6400,0.0000,'open','approved','unfulfilled',1631179,2,'','2021-01-25 08:57:08','2071'),
	 (4409732,165.7700,3.0000,'open','approved','unfulfilled',2476264,2,'','2021-01-25 08:57:11','2079'),
	 (4440729,12039.0000,520.0000,'open','approved','unfulfilled',2495768,2,'','2021-01-25 16:25:43','2087'),
	 (4349791,406.2800,21.3800,'open','approved','unfulfilled',2440791,2,'','2021-01-25 08:55:46','2057'),
	 (4360801,322.9200,1.0500,'open','approved','unfulfilled',2443932,2,'','2021-01-25 08:56:03','2058'),
	 (4442428,17129.0000,800.0000,'open','approved','unfulfilled',2496642,2,'','2021-01-25 17:45:43','2088'),
	 (4360989,111.6100,0.0000,'open','approved','unfulfilled',2444015,2,'','2021-01-25 08:56:47','2059');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4418702,13334.0000,600.0000,'open','approved','unfulfilled',2481747,2,'','2021-01-26 04:25:45','2081'),
	 (4448611,8662.0000,0.0000,'open','approved','unfulfilled',2500126,2,'','2021-01-27 08:18:57','2091'),
	 (4365189,307.0200,0.0000,'open','approved','unfulfilled',2446718,2,'','2021-01-25 08:56:50','2062'),
	 (4431918,44970.0000,0.0000,'open','approved','unfulfilled',2475095,2,'','2021-01-26 04:25:48','2084'),
	 (4331979,145.3000,0.0000,'open','approved','unfulfilled',2425227,2,'','2021-01-25 08:56:52','2047'),
	 (4328635,101.4600,4.2000,'open','approved','unfulfilled',1486776,2,'','2021-01-25 08:56:53','2045'),
	 (4464615,16185.0000,0.0000,'open','approved','unfulfilled',2501350,2,'','2021-01-27 08:18:59','2095'),
	 (4370135,92.1100,0.0000,'open','approved','unfulfilled',2450169,2,'','2021-01-25 08:56:58','2063'),
	 (4374053,140.3200,6.2400,'open','approved','unfulfilled',2453603,2,'','2021-01-25 08:56:59','2064'),
	 (4377721,263.4900,11.2400,'open','approved','unfulfilled',2455753,2,'','2021-01-25 08:57:01','2066');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4494280,36081.0000,1899.0000,'open','approved','unfulfilled',2529295,2,'','2021-01-28 09:18:51','2107'),
	 (4446215,18757.0000,0.0000,'open','approved','unfulfilled',2498793,2,'','2021-01-26 09:19:19','2089'),
	 (4558588,12202.0000,0.0000,'open','approved','unfulfilled',2567842,2,'','2021-01-30 08:18:55','2123'),
	 (4503439,12736.0000,550.0000,'open','approved','unfulfilled',2534197,2,'','2021-01-28 08:38:51','2110'),
	 (4570638,12202.0000,0.0000,'open','approved','unfulfilled',2575197,2,'','2021-01-30 08:18:58','2124'),
	 (4531247,13014.0000,0.0000,'open','approved','unfulfilled',2551463,2,'','2021-01-28 17:18:52','2115'),
	 (4463289,18203.0000,0.0000,'open','approved','unfulfilled',2478005,2,'','2021-01-26 13:39:16','2094'),
	 (4468892,12559.0000,0.0000,'open','approved','unfulfilled',2514407,2,'','2021-01-26 14:39:16','2098'),
	 (4475685,17276.0000,560.0000,'open','approved','unfulfilled',2517876,2,'','2021-01-27 11:38:51','2102'),
	 (4480691,34940.0000,0.0000,'open','approved','unfulfilled',2522026,2,'','2021-01-29 08:18:54','2105');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4477585,15666.0000,679.0000,'open','approved','unfulfilled',2518911,2,'','2021-01-27 08:18:52','2103'),
	 (4387037,23450.0000,2248.0000,'open','approved','unfulfilled',2461397,2,'','2021-01-25 10:04:10','2083'),
	 (4427950,12443.0000,560.0000,'open','approved','unfulfilled',2488514,2,'','2021-01-26 04:25:44','2082'),
	 (4440576,12325.0000,0.0000,'open','approved','unfulfilled',2495728,2,'','2021-01-27 08:18:55','2086'),
	 (4409740,12286.0000,0.0000,'open','approved','unfulfilled',2064471,2,'','2021-01-26 04:25:46','2080'),
	 (4469753,7162.0000,0.0000,'open','approved','unfulfilled',2374322,2,'','2021-01-27 08:18:58','2099'),
	 (4468107,7036.0000,0.0000,'open','approved','unfulfilled',2495728,2,'','2021-01-27 08:19:00','2097'),
	 (4553905,17954.0000,0.0000,'open','approved','unfulfilled',2567762,2,'','2021-01-30 08:18:56','2122'),
	 (4502063,9561.0000,2800.0000,'open','approved','unfulfilled',1375696,2,'','2021-01-28 08:38:53','2111'),
	 (4507349,10577.0000,455.0000,'open','approved','unfulfilled',2535876,2,'','2021-01-29 08:18:53','2112');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4662966,12982.0000,0.0000,'open','approved','unfulfilled',2630902,2,'','2021-02-04 08:03:12','2154'),
	 (4595561,17046.0000,250.0000,'open','approved','unfulfilled',2590623,2,'','2021-01-31 10:18:54','2130'),
	 (4594466,36164.0000,0.0000,'open','approved','unfulfilled',1123864,2,'','2021-02-01 08:18:55','2139'),
	 (4604397,11311.0000,500.0000,'open','approved','unfulfilled',2595648,2,'','2021-01-31 17:58:55','2138'),
	 (4558158,24171.0000,1129.0000,'open','approved','unfulfilled',2567482,2,'','2021-02-01 10:18:53','2121'),
	 (4596399,18058.0000,850.0000,'open','approved','unfulfilled',2591072,2,'','2021-02-01 10:18:57','2131'),
	 (4576900,48865.0000,0.0000,'open','approved','unfulfilled',1177056,2,'','2021-02-01 11:18:53','2127'),
	 (4622126,16151.0000,700.0000,'open','approved','unfulfilled',2606039,2,'','2021-02-01 13:18:53','2140'),
	 (4632785,12181.0000,0.0000,'open','approved','unfulfilled',2611683,2,'','2021-02-02 08:18:53','2146'),
	 (4632725,37985.0000,0.0000,'open','approved','unfulfilled',2611841,2,'','2021-02-02 08:18:54','2147');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4629982,20767.0000,999.0000,'open','approved','unfulfilled',2610230,2,'','2021-02-02 08:19:03','2145'),
	 (4580767,11185.0000,0.0000,'open','approved','unfulfilled',2581017,2,'','2021-02-02 08:18:59','2128'),
	 (4659238,12140.0000,0.0000,'open','approved','unfulfilled',2629327,2,'','2021-02-03 08:02:25','2150'),
	 (4551430,12443.0000,560.0000,'open','approved','unfulfilled',2564082,2,'','2021-02-02 08:19:00','2118'),
	 (4588306,15552.0000,0.0000,'open','approved','unfulfilled',2585853,2,'','2021-02-02 08:19:02','2136'),
	 (4628359,9988.0000,425.0000,'open','approved','unfulfilled',2609330,2,'','2021-02-01 17:58:53','2143'),
	 (4573479,13237.0000,595.0000,'open','approved','unfulfilled',2576918,2,'','2021-02-02 08:18:58','2125'),
	 (4597759,16166.0000,700.0000,'open','approved','unfulfilled',2591657,2,'','2021-02-02 08:19:01','2135'),
	 (4694972,9513.0000,400.0000,'open','approved','unfulfilled',2654253,2,'','2021-02-04 08:03:11','2168'),
	 (4659877,37146.0000,0.0000,'open','approved','unfulfilled',2629530,2,'','2021-02-04 08:03:15','2151');
INSERT INTO public.orders (id,total,discount,order_status,payment_status,fulfillment_status,customer_id,status,msg,createdat,code) VALUES
	 (4662315,31869.0000,0.0000,'open','approved','unfulfilled',2631026,2,'','2021-02-03 10:42:25','2155'),
	 (4658916,14851.0000,0.0000,'open','approved','unfulfilled',2642866,2,'','2021-02-03 10:42:28','2157'),
	 (4528449,17974.0000,0.0000,'open','approved','unfulfilled',2491187,2,'','2021-02-03 15:23:11','2162');
	
	
/* INSERT Items */
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4418702,11314983,2038352,'51753','Bota Cano Curto Cor Camel','553.05/191','CAMEL / 37',6.00,119.95,'',1,113.95,false,0,'2021-01-26 04:25:45'),
	 (4431918,11336280,3540068,'72889','Tênis Slip On na cor Dourado','327.04/202','DOURADO / 38',0.00,149.90,'',1,149.90,false,0,'2021-01-26 04:25:48'),
	 (4431918,11336281,2016710,'65627','Tênis Slip On vazado com sola Tratorada Cor Camel','417.20/201','CAMEL / 38',0.00,159.90,'',1,159.90,false,0,'2021-01-26 04:25:48'),
	 (4431918,11336283,3540005,'71044','Tênis Slip On na cor Branco','327.04/202','BRANCO / 38',0.00,139.90,'',1,139.90,false,0,'2021-01-26 04:25:48'),
	 (4446215,11372707,3532064,'71210','Sandália com tiras e Salto Bloco Cor Céu','466.58/202','CEU / 39',0.00,159.90,'',1,159.90,false,0,'2021-01-26 09:19:20'),
	 (4463289,11418387,3945550,'64626','Chinelo Dourado de Tiras Com Pedrarias + Embalagem Presente','308.01/192','DOURADO / 37/38',0.00,49.95,'',2,99.90,false,0,'2021-01-26 13:39:16'),
	 (4463289,11418453,3945476,'64625','Chinelo Rose de Tiras Com Pedrarias + Embalagem Presente','308.01/192','ROSE / 37/38',0.00,49.95,'',1,49.95,false,0,'2021-01-26 13:39:16'),
	 (4468892,11435274,3533420,'72544','Sapatilha em Couro Vazado de Bico Quadrado na Amarela','142.04/202','AMARELO / 36',0.00,103.92,'',1,103.92,false,0,'2021-01-26 14:39:16'),
	 (4440576,11358454,2012729,'55769','Tamanco de Salto Bloco em Couro Animal Print Cor Vermelho','606.50/191','VERMELHO / 36',0.00,50.97,'',1,50.97,false,0,'2021-01-27 08:18:55'),
	 (4448611,11378913,1885132,'52296','Mocassim em Couro na Cor Camel','214.10/191','CAMEL / 37',0.00,64.95,'',1,64.95,false,0,'2021-01-27 08:18:57');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4469753,11437331,3945520,'64623','Chinelo Preto de Tiras Com Pedrarias + Embalagem Presente','308.01/192','PRETO / 37/38',0.00,49.95,'',1,49.95,false,0,'2021-01-27 08:18:58'),
	 (4464615,11424352,3492261,'71350','Sandália de Tiras Lace Up e Salto Bloco na Cor Camel','456.04/202','CAMEL / 36',0.00,111.93,'',1,111.93,false,0,'2021-01-27 08:19:00'),
	 (4468107,11433186,2113515,'57524','Mule Salto Bloco na Cor Branco','551.01/192','BRANCO / 36',0.00,50.97,'',1,50.97,false,0,'2021-01-27 08:19:01'),
	 (4475685,11454007,3492323,'71354','Sandália de Tiras Lace Up e Salto Bloco na Cor Branca','456.04/202','BRANCO / 35',5.60,111.93,'',1,106.33,false,0,'2021-01-27 11:38:52'),
	 (4503439,11518219,3540308,'74467','Sandália Rasteira de Nó na Cor Céu','0086.21/202','CEU / 38',5.50,109.90,'',1,104.40,false,0,'2021-01-28 08:38:52'),
	 (4502063,11514949,3611785,'66596','Mule em Couro Preto e Animal Print Zebra','011.22/201','PELO ZEBRA / 39',28.00,101.94,'',1,73.94,false,0,'2021-01-28 08:38:53'),
	 (4494280,11494249,3576057,'74597','Tênis de Lycra na Cor Vermelho','147.24/202','VERMELHO / 39',9.00,179.90,'',1,170.90,false,0,'2021-01-28 09:18:52'),
	 (4494280,11494529,3820932,'74934','Tênis em Malha Knit Preto','257.01/202','PRETO / 39',9.99,199.90,'',1,189.91,false,0,'2021-01-28 09:18:52'),
	 (4531247,11578905,3533271,'72543','Sapatilha em Couro Vazado de Bico Quadrado na Cor Céu','142.04/202','CEU / 33',0.00,103.92,'',1,103.92,false,0,'2021-01-28 17:18:52'),
	 (4507349,11529686,2564188,'66051','Mocassim em Couro na Cor Rose','214.14/201','ROSE / 35',4.55,90.93,'',1,86.38,false,0,'2021-01-29 08:18:53');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4480691,11466248,2566634,'65437','Tênis Couro Escamado na Cor Camel','347.02/201','CAMEL / 36',0.00,99.95,'',1,99.95,false,0,'2021-01-29 08:18:54'),
	 (4480691,11466315,3623037,'66956','Tênis Casual com Sola Caixa em Pelo Zebra','407.01/201','PELO ZEBRA / 36',0.00,219.90,'',1,219.90,false,0,'2021-01-29 08:18:55'),
	 (4349791,11191026,3533376,'72543','Sapatilha em Couro Vazado de Bico Quadrado na Cor Céu','142.04/202','CEU / 36',5.20,103.92,'',1,98.72,false,0,'2021-01-25 08:55:46'),
	 (4349791,11191031,3533420,'72544','Sapatilha em Couro Vazado de Bico Quadrado na Amarela','142.04/202','AMARELO / 36',5.20,103.92,'',1,98.72,false,0,'2021-01-25 08:55:46'),
	 (4349791,11191043,3533581,'72542','Sapatilha em Couro Vazado de Bico Quadrado na Blush','142.04/202','Blush / 36',5.20,103.92,'',1,98.72,false,0,'2021-01-25 08:55:46'),
	 (4349791,11194698,3502817,'70894','Sapatilha em Couro Vazada Bico Redondo na Cor Nude','102.10/202','NUDE / 36',5.78,115.90,'',1,110.12,false,0,'2021-01-25 08:55:46'),
	 (4360801,11214485,2566638,'65437','Tênis Couro Escamado na Cor Camel','347.02/201','CAMEL / 35',0.00,99.95,'',1,99.95,false,0,'2021-01-25 08:56:03'),
	 (4360801,11214516,2016007,'58758','Tênis Slip On em Couro Escamado Cor Nude','327.75/192','NUDE / 35',0.00,104.93,'',1,104.93,false,0,'2021-01-25 08:56:03'),
	 (4360801,11214554,1904387,'46277','Sandália Rasteira em Couro na Cor Preto','016.24/182','PRETO / 34',0.00,65.94,'',1,65.94,false,0,'2021-01-25 08:56:03'),
	 (4360801,11214629,1986305,'44979','Chinelo com Vira Em Corda Trançada na Cor Branco','028.19/182','BRANCO / 35/36',1.05,20.97,'',1,19.92,false,0,'2021-01-25 08:56:03');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4360989,11214850,3365486,'71225','Tamanco de Salto Bloco na cor Camel','466.30/202','CAMEL / 39',0.00,83.94,'',1,83.94,false,0,'2021-01-25 08:56:47'),
	 (4427950,11327864,3492047,'71352','Sandália de Tiras Lace Up e Salto Bloco na Cor Blush','456.04/202','Blush / 35',5.60,111.93,'',1,106.33,false,0,'2021-01-26 04:25:44'),
	 (4365189,11222519,3533495,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 38',0.00,103.92,'',1,103.92,false,0,'2021-01-25 08:56:50'),
	 (4365189,11222572,3539845,'71040','Tênis Slip On na cor Camel','327.04/202','CAMEL / 38',0.00,139.90,'',1,139.90,false,0,'2021-01-25 08:56:50'),
	 (4365189,11223066,2003084,'47563','Rasteirinha em Couro na Cor Camel','066.32/182','CAMEL / 38',0.00,35.96,'',1,35.96,false,0,'2021-01-25 08:56:50'),
	 (4331979,11163107,2015933,'58756','Tênis Slip On Couro Escamado Branco','327.75/192','BRANCO / 38',0.00,104.93,'',1,104.93,false,0,'2021-01-25 08:56:52'),
	 (4328635,11156321,3365537,'71226','Tamanco de Salto Bloco na cor Nude','466.30/202','NUDE / 36',4.20,83.94,'',1,79.74,false,0,'2021-01-25 08:56:53'),
	 (4370135,11229921,2014260,'60679','Sandália Rasteira estampa Cobra na Cor Preto e Branco','056.09/192','PRETO / 37',0.00,64.95,'',1,64.95,false,0,'2021-01-25 08:56:58'),
	 (4374053,11232562,2564268,'64050','Tênis em Malha Knit Preto','137.01/201','PRETO / 38',4.49,89.94,'',1,85.45,false,0,'2021-01-25 08:56:59'),
	 (4374053,11232930,2571942,'38857','Chinelo de dedo na cor Branco','118.01/181','BRANCO / 37/38',1.75,34.95,'',1,33.20,false,0,'2021-01-25 08:56:59');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4409740,11296585,3945520,'64623','Chinelo Preto de Tiras Com Pedrarias + Embalagem Presente','308.01/192','PRETO / 37/38',0.00,49.95,'',1,49.95,false,0,'2021-01-26 04:25:46'),
	 (4377721,11239117,2014256,'60679','Sandália Rasteira estampa Cobra na Cor Preto e Branco','056.09/192','PRETO / 36',3.25,64.95,'',1,61.70,false,0,'2021-01-25 08:57:01'),
	 (4377721,11239235,3538509,'71164','Sandália de Tira Reta com Salto Médio em Lezard cor Preta','466.60/202','PRETO / 35',7.99,159.90,'',1,151.91,false,0,'2021-01-25 08:57:01'),
	 (4383438,11250780,1885131,'52296','Mocassim em Couro na Cor Camel','214.10/191','CAMEL / 35',0.00,64.95,'',1,64.95,false,0,'2021-01-25 08:57:03'),
	 (4383438,11250793,1885129,'52296','Mocassim em Couro na Cor Camel','214.10/191','CAMEL / 36',0.00,64.95,'',1,64.95,false,0,'2021-01-25 08:57:03'),
	 (4383438,11250945,3533492,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 36',0.00,103.92,'',1,103.92,false,0,'2021-01-25 08:57:03'),
	 (4383438,11250953,3533496,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 37',0.00,103.92,'',1,103.92,false,0,'2021-01-25 08:57:03'),
	 (4383438,11251063,2012712,'55792','Mule Salto Bloco em Couro Snake','431.05/191','PRETO/BRANCO COBRA / 37',0.00,50.97,'',1,50.97,false,0,'2021-01-25 08:57:03'),
	 (4386941,11257696,2003108,'46296','Rasteirinha de Tiras na Cor Rose','016.21/182','ROSE / 35',0.00,35.96,'',1,35.96,false,0,'2021-01-25 08:57:06'),
	 (4387037,11257915,3540146,'74462','Sandália Rasteira de Nó na Cor Camel','0086.21/202','CAMEL / 35',1099.00,10990.00,'',1,9891.00,false,0,'2021-01-25 10:04:10');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4387037,11330512,2714859,'72425','Sandália de Tiras na Cor Branco','016.59/202','BRANCO / 35',1149.00,11490.00,'',1,10341.00,false,0,'2021-01-25 10:04:10'),
	 (4409740,11296603,3945561,'64627','Chinelo Preto de Tiras Com Miçangas + Embalagem Presente','308.02/192','PRETO / 37/38',0.00,49.95,'',1,49.95,false,0,'2021-01-26 04:25:46'),
	 (4431979,11336430,3540145,'74462','Sandália Rasteira de Nó na Cor Camel','0086.21/202','CAMEL / 38',0.00,109.90,'',1,109.90,false,0,'2021-01-25 11:40:15'),
	 (4440729,11358712,3533419,'72544','Sapatilha em Couro Vazado de Bico Quadrado na Amarela','142.04/202','AMARELO / 37',5.20,103.92,'',1,98.72,false,0,'2021-01-25 16:25:44'),
	 (4442428,11363587,2016453,'65617','Tênis Slip On Vazado com sola Tratorada Cor Preto','417.20/201','PRETO / 37',8.00,159.90,'',1,151.90,false,0,'2021-01-25 17:45:43'),
	 (4477585,11458820,2792705,'56949','Chinelo De Tiras na Cor Branco','018.01/192','BRANCO / 35/36',2.00,39.92,'',1,37.92,false,0,'2021-01-27 08:18:52'),
	 (4477585,11458962,3524637,'71290','Tamanco em Salto Taça na Cor Preto','326.03/202','PRETO / 35',4.79,95.83,'',1,91.04,false,0,'2021-01-27 08:18:52'),
	 (4440576,11358326,2113552,'57520','Mule Salto Alto Snake Off White','551.01/192','PRETO/BRANCO COBRA / 36',0.00,50.97,'',1,50.97,false,0,'2021-01-27 08:18:55'),
	 (4386941,11257727,2423654,'46297','Rasteirinha de Tiras na Cor Amarelo','016.21/182','AMARELO / 39',0.00,35.96,'',1,35.96,false,0,'2021-01-25 08:57:06'),
	 (4389346,11262689,2016278,'56561','Scarpin em Verniz Nude','435.01/191','NUDE / 35',0.00,79.95,'',1,79.95,false,0,'2021-01-25 08:57:08');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4389346,11262735,2424712,'46294','Rasteirinha de Tiras na Cor Camel','016.21/182','CAMEL / 35',0.00,35.96,'',1,35.96,false,0,'2021-01-25 08:57:08'),
	 (4389346,11262764,2180723,'54828','Tamanco Salto Bloco em Couro Escamado Dourado','466.31/191','DOURADO / 35',0.00,74.95,'',1,74.95,false,0,'2021-01-25 08:57:08'),
	 (4389346,11262931,3524687,'71300','Tamanco em Salto Taça na Cor Blush','326.03/202','Blush / 35',0.00,95.83,'',1,95.83,false,0,'2021-01-25 08:57:08'),
	 (4389346,11263267,2014336,'58500','Sandália Rasteira de Tiras na Cor Nude','016.43/192','NUDE / 35',0.00,54.95,'',1,54.95,false,0,'2021-01-25 08:57:08'),
	 (4409732,11296556,2016397,'56642','Scarpin Salto Medio na Cor Nude','315.01/192','NUDE / 38',0.00,84.95,'',1,84.95,false,0,'2021-01-25 08:57:11'),
	 (4409732,11296657,2014475,'52037','Sapatilha Bico Redondo em Couro na Cor Preto','102.07/191','PRETO / 38',3.00,59.95,'',1,56.95,false,0,'2021-01-25 08:57:11'),
	 (4558588,11642162,3533577,'72542','Sapatilha em Couro Vazado de Bico Quadrado na Blush','142.04/202','Blush / 35',0.00,103.92,'',1,103.92,false,0,'2021-01-30 08:18:55'),
	 (4553905,11629655,3656795,'66200','Scarpin Bico Fino em Couro Cobra Camel','885.06/201','COBRA CAMEL / 38',0.00,71.96,'',1,71.96,false,0,'2021-01-30 08:18:56'),
	 (4553905,11629676,2016943,'66204','Scarpin Boneca Bico Fino em Couro Cor Vermelha','885.06/201','VERMELHO / 38',0.00,71.96,'',1,71.96,false,0,'2021-01-30 08:18:56'),
	 (4570638,11666650,3533429,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 33',0.00,103.92,'',1,103.92,false,0,'2021-01-30 08:18:58');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4558158,11641091,3576816,'63805','Rasteira em Couro na Cor Camel','0086.09/201','CAMEL / 37',3.84,76.93,'',1,73.09,false,0,'2021-02-01 10:18:53'),
	 (4558158,11641095,3945520,'64623','Chinelo Preto de Tiras Com Pedrarias + Embalagem Presente','308.01/192','PRETO / 37/38',2.50,49.95,'',1,47.45,false,0,'2021-02-01 10:18:53'),
	 (4558158,11641096,3945477,'64625','Chinelo Rose de Tiras Com Pedrarias + Embalagem Presente','308.01/192','ROSE / 35/36',2.50,49.95,'',1,47.45,false,0,'2021-02-01 10:18:54'),
	 (4558158,11641098,3620988,'64634','Chinelo Preto de Tiras Com Pedraria + Embalagem Especial','308.04/192','PRETO / 35/36',2.45,48.93,'',1,46.48,false,0,'2021-02-01 10:18:54'),
	 (4596399,11718283,2873710,'71691','Sandália de Salto bloco em couro com fivela Cor Preto','456.02/202','PRETO / 34',8.50,169.90,'',1,161.40,false,0,'2021-02-01 10:18:58'),
	 (4604397,11737465,2566635,'65437','Tênis Couro Escamado na Cor Camel','347.02/201','CAMEL / 38',5.00,99.95,'',1,94.95,false,0,'2021-01-31 17:58:56'),
	 (4576900,11679643,3533494,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 35',0.00,103.92,'',1,103.92,false,0,'2021-02-01 11:18:53'),
	 (4576900,11679653,3533492,'72533','Sapatilha em Couro Vazado de Bico Quadrado na Preta','142.04/202','PRETO / 36',0.00,103.92,'',1,103.92,false,0,'2021-02-01 11:18:54'),
	 (4576900,11679704,3533378,'72543','Sapatilha em Couro Vazado de Bico Quadrado na Cor Céu','142.04/202','CEU / 37',0.00,103.92,'',1,103.92,false,0,'2021-02-01 11:18:54'),
	 (4576900,11679753,3577033,'66989','Sapato Slip On em Couro na cor Preto','205.55/201','PRETO / 37',0.00,101.94,'',1,101.94,false,0,'2021-02-01 11:18:55');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4576900,11680002,2003193,'55108','Tênis Slip On Cobra Preto/Branco','357.04/191','PRETO/BRANCO COBRA / 36',0.00,74.95,'',1,74.95,false,0,'2021-02-01 11:18:55'),
	 (4594466,11714343,2423651,'46297','Rasteirinha de Tiras na Cor Amarelo','016.21/182','AMARELO / 36',0.00,35.96,'',1,35.96,false,0,'2021-02-01 08:18:56'),
	 (4594466,11714363,3945550,'64626','Chinelo Dourado de Tiras Com Pedrarias + Embalagem Presente','308.01/192','DOURADO / 37/38',0.00,49.95,'',1,49.95,false,0,'2021-02-01 08:18:56'),
	 (4594466,11714368,3945519,'64623','Chinelo Preto de Tiras Com Pedrarias + Embalagem Presente','308.01/192','PRETO / 35/36',0.00,49.95,'',1,49.95,false,0,'2021-02-01 08:18:56'),
	 (4594466,11714395,3945562,'64627','Chinelo Preto de Tiras Com Miçangas + Embalagem Presente','308.02/192','PRETO / 35/36',0.00,49.95,'',1,49.95,false,0,'2021-02-01 08:18:57'),
	 (4594466,11714420,3948195,'64636','Chinelo Dourado de Tiras Com Pedraria + Embalagem Especial','308.04/192','DOURADO / 37/38',0.00,55.93,'',1,55.93,false,0,'2021-02-01 08:18:57'),
	 (4594466,11714427,2003084,'47563','Rasteirinha em Couro na Cor Camel','066.32/182','CAMEL / 38',0.00,35.96,'',1,35.96,false,0,'2021-02-01 08:18:57'),
	 (4594466,11714511,3365481,'71225','Tamanco de Salto Bloco na cor Camel','466.30/202','CAMEL / 36',0.00,83.94,'',1,83.94,false,0,'2021-02-01 08:18:58'),
	 (4622126,11775480,3539841,'71040','Tênis Slip On na cor Camel','327.04/202','CAMEL / 34',7.00,139.90,'',1,132.90,false,0,'2021-02-01 13:18:53'),
	 (4628359,11791875,3623501,'69558','Tênis Slip On com Sola Alta em Couro Escama na cor Bordo','397.10/201','BORDO / 36',4.25,84.95,'',1,80.70,false,0,'2021-02-01 17:58:53');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4632785,11802645,3533380,'72543','Sapatilha em Couro Vazado de Bico Quadrado na Cor Céu','142.04/202','CEU / 38',0.00,103.92,'',1,103.92,false,0,'2021-02-02 08:18:53'),
	 (4632725,11802519,2038974,'65476','Bota Coturno Camel','493.03/201','CAMEL / 36',0.00,329.90,'',1,329.90,false,0,'2021-02-02 08:18:55'),
	 (4632725,11802699,3945562,'64627','Chinelo Preto de Tiras Com Miçangas + Embalagem Presente','308.02/192','PRETO / 35/36',0.00,49.95,'',1,49.95,false,0,'2021-02-02 08:18:55'),
	 (4573479,11671812,2013102,'57234','Sandália Salto Bloco em Couro Escamado na Cor Nude','606.54/192','NUDE / 38',5.95,118.93,'',1,112.98,false,0,'2021-02-02 08:18:58'),
	 (4580767,11689590,3576816,'63805','Rasteira em Couro na Cor Camel','0086.09/201','CAMEL / 37',0.00,76.93,'',1,76.93,false,0,'2021-02-02 08:18:59'),
	 (4551430,11622615,3492324,'71354','Sandália de Tiras Lace Up e Salto Bloco na Cor Branca','456.04/202','BRANCO / 38',5.60,111.93,'',1,106.33,false,0,'2021-02-02 08:19:00'),
	 (4597759,11721384,2798687,'72055','Mocassim em couro na Cor Branco','234.01/202','BRANCO / 39',7.00,139.90,'',1,132.90,false,0,'2021-02-02 08:19:01'),
	 (4588306,11707149,3576814,'63805','Rasteira em Couro na Cor Camel','0086.09/201','CAMEL / 36',0.00,76.93,'',1,76.93,false,0,'2021-02-02 08:19:03'),
	 (4629982,11796249,3945562,'64627','Chinelo Preto de Tiras Com Miçangas + Embalagem Presente','308.02/192','PRETO / 35/36',5.00,49.95,'',2,94.90,false,0,'2021-02-02 08:19:04'),
	 (4629982,11796260,3945561,'64627','Chinelo Preto de Tiras Com Miçangas + Embalagem Presente','308.02/192','PRETO / 37/38',4.99,49.95,'',2,94.91,false,0,'2021-02-02 08:19:04');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4595561,11716509,3577034,'66989','Sapato Slip On em Couro na cor Preto','205.55/201','PRETO / 36',0.00,101.94,'',1,101.94,false,0,'2021-01-31 10:18:55'),
	 (4595561,11716663,3945519,'64623','Chinelo Preto de Tiras Com Pedrarias + Embalagem Presente','308.01/192','PRETO / 35/36',2.50,49.95,'',1,47.45,false,0,'2021-01-31 10:18:55'),
	 (4659238,11858374,2003048,'52002','Rasteira Slide Couro na Cor Nude','016.36/191','NUDE / 35',0.00,47.96,'',1,47.96,false,0,'2021-02-03 08:02:25'),
	 (4659238,11859477,2003041,'52003','Rasteirinha Slide em Couro Animal Print na Cor Camel/Preto','016.36/191','CAMEL/PRETO ONÇA / 35',0.00,51.96,'',1,51.96,false,0,'2021-02-03 08:02:25'),
	 (4662315,11865425,3535219,'72452','Rasteira de Rafia na Cor Céu','026.18/202','CEU / 35',0.00,75.92,'',1,75.92,false,0,'2021-02-03 10:42:25'),
	 (4662315,11865448,3533379,'72543','Sapatilha em Couro Vazado de Bico Quadrado na Cor Céu','142.04/202','CEU / 35',0.00,103.92,'',1,103.92,false,0,'2021-02-03 10:42:25'),
	 (4662315,11865578,2564188,'66051','Mocassim em Couro na Cor Rose','214.14/201','ROSE / 35',0.00,90.93,'',1,90.93,false,0,'2021-02-03 10:42:25'),
	 (4662315,11866244,2308955,'57936','Chinelo De Tiras Rainbow na Cor Azul','018.51/192','AZUL / 35/36',0.00,47.92,'',1,47.92,false,0,'2021-02-03 10:42:26'),
	 (4658916,11857936,2016944,'66204','Scarpin Boneca Bico Fino em Couro Cor Vermelha','885.06/201','VERMELHO / 36',0.00,71.96,'',1,71.96,false,0,'2021-02-03 10:42:28'),
	 (4658916,11877827,2014304,'60666','Rasteirinha Couro na Cor Preto','056.08/192','PRETO / 37',0.00,44.95,'',1,44.95,false,0,'2021-02-03 10:42:28');
INSERT INTO public.items (id,id_item,variation_id,external_id,"name",reference,variation,discount,price,sku,quantity,total,is_gift,is_cover,createdat) VALUES
	 (4528449,11571673,3656792,'66200','Scarpin Bico Fino em Couro Cobra Camel','885.06/201','COBRA CAMEL / 36',0.00,71.96,'',1,71.96,false,0,'2021-02-03 15:23:11'),
	 (4528449,11572083,2113691,'57332','Sandália Anabela de Tricot na Cor Nude','746.04/192','NUDE / 36',0.00,75.96,'',1,75.96,false,0,'2021-02-03 15:23:11'),
	 (4694972,11944126,2015889,'65740','Tênis Slip On em Couro Escamado Cor Preto','247.06/201','PRETO / 38',4.00,79.95,'',1,75.95,false,0,'2021-02-04 08:03:11'),
	 (4662966,11867187,3492260,'71350','Sandália de Tiras Lace Up e Salto Bloco na Cor Camel','456.04/202','CAMEL / 37',0.00,111.93,'',1,111.93,false,0,'2021-02-04 08:03:12'),
	 (4659877,11859901,3491243,'71432','Sandália de Tiras Finas e Salto Bloco na Cor Preto','596.05/202','PRETO / 38',0.00,149.90,'',1,149.90,false,0,'2021-02-04 08:03:15'),
	 (4659877,11860275,3532060,'71210','Sandália com tiras e Salto Bloco Cor Céu','466.58/202','CEU / 38',0.00,159.90,'',1,159.90,false,0,'2021-02-04 08:03:15');