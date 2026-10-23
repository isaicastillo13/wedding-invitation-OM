-- Carga inicial desde Lista de invitados.xlsx
-- Nombres preservados tal como aparecen (solo se quitaron espacios al inicio/final).
-- Revisa grupos/cupos antes de ejecutar. IDs deterministas: ejecutar de nuevo no duplica filas.
begin;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('1908e2c5-b267-53bf-8326-cafaa4731606', 'INV-OM-AODBMOSANRE-4', 'Erasmo bando', 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('f12dbafa-5313-5f1c-a9c0-6f02984a8fe7', '1908e2c5-b267-53bf-8326-cafaa4731606', 'Erasmo bando', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('fca682d9-2189-57e9-9d6f-aa3bcab8cb43', '1908e2c5-b267-53bf-8326-cafaa4731606', 'Perla Miranda', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('b6f89eea-b190-5dc3-8d29-cfbc3e1b0397', '1908e2c5-b267-53bf-8326-cafaa4731606', 'Erasmo Emmanuel Obando Miranda', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0945f6c9-0f26-59a9-8844-032d1c78d43b', '1908e2c5-b267-53bf-8326-cafaa4731606', 'Edelmarys Marielos Obando Miranda', false, 4) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'INV-OM-ONDZMASNDGORAAMRULAEIO-5', 'Omar Segundo Miranda Lazo', 5) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('140b99e0-cce0-5ef5-9a17-fa3d173bea13', 'a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'Omar Segundo Miranda Lazo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('265640a9-770f-5550-a376-35d95e2b3a6b', 'a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'Vilma Rosa Ortiz Sevilla', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('65799936-1650-513c-8be8-4f48cefa5b82', 'a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'Daysi Vilmarys Miranda Ortiz', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ba27ee0f-1b37-5946-9e6c-8c605e8b6764', 'a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'Grisselle Omarys Miranda Ortiz', false, 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('86202876-5f00-5d53-824b-338feec1f94f', 'a6c85cf1-749f-588f-b35d-746f1d7c42ab', 'Vilma Rosa Miranda Ortiz', false, 5) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('5f233de3-c850-5df9-a613-2c08ef914e2f', 'INV-OM-DROUEUCIGAOAL-4', 'Eulogio Cuadra', 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('a60fd5c2-7381-57d3-a3c7-c909a89cb238', '5f233de3-c850-5df9-a613-2c08ef914e2f', 'Eulogio Cuadra', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('eae000c8-9929-5d07-8dad-5d726827a2f7', '5f233de3-c850-5df9-a613-2c08ef914e2f', 'María Suyen Miranda', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ab58e071-ee43-54e9-a0a6-a7f083addc04', '5f233de3-c850-5df9-a613-2c08ef914e2f', 'Eulogio Cuadra miranda', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0878380c-aaf6-5965-aebd-c290c47c8e94', '5f233de3-c850-5df9-a613-2c08ef914e2f', 'Omar Stefano cuadra miranda', false, 4) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('2ef8833a-ac47-54a2-b155-5cfc73b70240', 'INV-OM-ASDAIOLTURAZMMOAGVNARO-3', 'Omar Gustavo Miranda Lazo', 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('1bbd238e-4bed-56e0-9fa6-fab6364fb3cb', '2ef8833a-ac47-54a2-b155-5cfc73b70240', 'Omar Gustavo Miranda Lazo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('eeec2cc7-036a-5541-96f4-3ed5b81fb26f', '2ef8833a-ac47-54a2-b155-5cfc73b70240', 'Dangelid Hernández', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('00eb7a33-1fa2-58e4-b6bb-ba16588952dc', '2ef8833a-ac47-54a2-b155-5cfc73b70240', 'Omar Donalid Miranda Hernández', false, 3) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('3f6e3c63-d6cf-5b61-8d0b-5d2c41ed1bf1', 'INV-OM-MALEIRIOOARGANUDACUD-2', 'Eulogio cuadra Miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('a35b6d51-f894-5915-844b-4c18b9657a83', '3f6e3c63-d6cf-5b61-8d0b-5d2c41ed1bf1', 'Eulogio cuadra Miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0808dbdd-428e-5769-9716-8f6ff91cbb3a', '3f6e3c63-d6cf-5b61-8d0b-5d2c41ed1bf1', 'Excenia Noguera', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('3abeadfc-7264-536c-8995-f38c674af721', 'INV-OM-EYSDICEARSANAU-2', 'Yessenia cuadra', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('86a1daa4-b9cc-55e7-a0a9-7c32139af38c', '3abeadfc-7264-536c-8995-f38c674af721', 'Yessenia cuadra', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('1f60fb58-c639-5c45-9d1f-93790054180e', '3abeadfc-7264-536c-8995-f38c674af721', 'Ramon Bolaños', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('af4ba913-1b89-5eaa-bf13-58494564c057', 'INV-OM-IZLUDMOOALXEAAZINRAMZAAOLGAAAIRM-1', 'Maria auxiliadora lazo González mamá', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('eb02477f-4035-5c76-9985-61f20daef759', 'af4ba913-1b89-5eaa-bf13-58494564c057', 'Maria auxiliadora lazo González mamá', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('39f17abb-d9a0-575b-9d24-5fdf5cb6e86b', 'INV-OM-ZEOAGZGAOOLSUANLVZT-2', 'Gustavo lazo González', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('54d5b205-fc8a-5321-892b-31a6d1f2c1c4', '39f17abb-d9a0-575b-9d24-5fdf5cb6e86b', 'Gustavo lazo González', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9f431fa2-da34-58a5-a73e-24a6701648ff', '39f17abb-d9a0-575b-9d24-5fdf5cb6e86b', 'Olga Matus', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('9a6d0a98-2695-55d7-8df0-47d0693815a5', 'INV-OM-SUASROAIREAIGTEETRMA-2', 'María teresa ArosteguÍ', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('a23ee647-ab67-5152-b7cb-9977deef0669', '9a6d0a98-2695-55d7-8df0-47d0693815a5', 'María teresa ArosteguÍ', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7430e3e0-74db-5281-9223-62fd42e57174', '9a6d0a98-2695-55d7-8df0-47d0693815a5', 'Mario lazo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('8a2a078d-3a68-5d0c-8a63-5546558c795c', 'INV-OM-UGSEATEJIRARVIO-1', 'Javier Arosteguí', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('92cc0104-93f1-5607-8c8d-275187946a0e', '8a2a078d-3a68-5d0c-8a63-5546558c795c', 'Javier Arosteguí', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('41bb6d1e-4f9b-5f20-b4ac-8b829907da37', 'INV-OM-ESBEIESSKJAN-2', 'Jessie Ebanks', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0df86058-6821-5b79-b735-0edd064dfdbf', '41bb6d1e-4f9b-5f20-b4ac-8b829907da37', 'Jessie Ebanks', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('92b3b054-fcba-5f36-a9d7-a3f87ad33cb6', '41bb6d1e-4f9b-5f20-b4ac-8b829907da37', 'Teresa lazo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('c1ecaca8-17e8-51f6-8f49-e5283bb0f22f', 'INV-OM-AMLZLAIIASOUAR-2', 'María Luisa lazo', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0530eafd-0a14-5ce5-ad89-13a34b0fcca9', 'c1ecaca8-17e8-51f6-8f49-e5283bb0f22f', 'María Luisa lazo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('6c0d26f4-cc86-5df6-9d57-302b3748907d', 'c1ecaca8-17e8-51f6-8f49-e5283bb0f22f', 'Guillermo Orozco', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('62a3e62f-ab7d-56f9-99b4-1c03c7a23b07', 'INV-OM-ODELYOMEWA-1', 'May lee Wood', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('bac534e5-5ea3-5589-b9a7-5b8112fae104', '62a3e62f-ab7d-56f9-99b4-1c03c7a23b07', 'May lee Wood', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('c0707fc7-678f-59d4-a9d5-c0ef6bef68cb', 'INV-OM-DAOOEDRANW-2', 'Andrea Wood', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0e283b66-6ae3-5cab-aa4c-b59f789820ef', 'c0707fc7-678f-59d4-a9d5-c0ef6bef68cb', 'Andrea Wood', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7f75a744-3345-501b-82ee-3a589adfccd7', 'c0707fc7-678f-59d4-a9d5-c0ef6bef68cb', 'Jean Paul Rodríguez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('4df374b9-eafe-5556-82b7-7f1589488735', 'INV-OM-UMEAVTRISAJ-3', 'Javier Matus', 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('69c199e3-5302-597a-8efc-7b108ca19e61', '4df374b9-eafe-5556-82b7-7f1589488735', 'Javier Matus', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('4d690fb9-baf3-5a43-81d6-1bb4f49feb31', '4df374b9-eafe-5556-82b7-7f1589488735', 'Irina lazo', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ad477fd1-9363-5b92-916b-362a7a740710', '4df374b9-eafe-5556-82b7-7f1589488735', 'José Manuel Matus', false, 3) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('b5cae4f1-4d7e-5001-9d66-c243232cda8c', 'INV-OM-TMKSGEAEUNE-2', 'Kengee Matus', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('3f02aa01-c416-5ba5-b4b3-56a6a298c4ce', 'b5cae4f1-4d7e-5001-9d66-c243232cda8c', 'Kengee Matus', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('fe1d2c45-2577-5f6b-85fc-b9c4b4243bdb', 'b5cae4f1-4d7e-5001-9d66-c243232cda8c', 'Hesler Solano', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('cf3815c5-b46d-5cbf-81f2-cbba1023e178', 'INV-OM-NSCYUDATIM-2', 'Cindy Matus', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('a4b76de5-1ace-5e37-8ae3-ebabd50f0395', 'cf3815c5-b46d-5cbf-81f2-cbba1023e178', 'Cindy Matus', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('48c357ea-0c9e-5ef6-9064-381156b4d9fd', 'cf3815c5-b46d-5cbf-81f2-cbba1023e178', 'José ángel Maldonado', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('fe3d1657-1025-5e38-8b99-8c26233dc433', 'INV-OM-UASURNLNOAAZJALC-3', 'Juan Carlos lanuza', 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('84116233-b70e-5ebb-aa47-968396856df8', 'fe3d1657-1025-5e38-8b99-8c26233dc433', 'Juan Carlos lanuza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8a09f180-89b5-585f-b036-048e5328d01e', 'fe3d1657-1025-5e38-8b99-8c26233dc433', 'Mariela lazo', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8eb5eb5c-d07c-53d5-af98-5d5aaceebf1c', 'fe3d1657-1025-5e38-8b99-8c26233dc433', 'Kelly Lanuza', false, 3) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('7d2b0894-5bc0-532a-b8f6-6e062bc6bb78', 'INV-OM-PONCALAHNDUOZZJAUAALRSL-2', 'Juan Carlos lanuza Lazo PH.D', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('2d78dc37-a6a8-5644-9d4f-e16aa4dd2905', '7d2b0894-5bc0-532a-b8f6-6e062bc6bb78', 'Juan Carlos lanuza Lazo PH.D', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('eb510522-90f5-581c-a15f-7c37f394c874', '7d2b0894-5bc0-532a-b8f6-6e062bc6bb78', 'Katherine Alegría', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('de290d13-fdd9-592c-b3a4-3e239ff2e0b8', 'INV-OM-WUMHIATRDAIOLL-4', 'William Hurtado', 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('32c92a15-5b7b-52d9-84e9-1692bc6ce5a6', 'de290d13-fdd9-592c-b3a4-3e239ff2e0b8', 'William Hurtado', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('deb4f68e-36a4-58c3-a0e8-ef5f33a7aecc', 'de290d13-fdd9-592c-b3a4-3e239ff2e0b8', 'Julissa lazo', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('db7e4c96-a1b2-5d72-9e91-37e5b5b823c9', 'de290d13-fdd9-592c-b3a4-3e239ff2e0b8', 'Fabiana hurtado', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7c85d6cd-b513-50c9-bba1-ec36f1347d72', 'de290d13-fdd9-592c-b3a4-3e239ff2e0b8', 'Berni hurtado', false, 4) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('74177531-87ab-58a0-a46d-0bddc1db031e', 'INV-OM-NALAREOLAULSMCOZ-3', 'Carlos Manuel Lazo', 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('298a5499-449d-5475-902f-ca580d68e7f2', '74177531-87ab-58a0-a46d-0bddc1db031e', 'Carlos Manuel Lazo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('386eada6-927a-5448-895a-333e6b486561', '74177531-87ab-58a0-a46d-0bddc1db031e', 'Celieth González', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5848c6c9-3097-5b4b-8d0b-62984b9d8364', '74177531-87ab-58a0-a46d-0bddc1db031e', 'Mariana Lazo', false, 3) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('b2d67db7-9815-5978-a76c-07e94a29933e', 'INV-OM-ATOZRAOSABEVLRE-2', 'Teresa lazo Bravo', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9cdf89f3-a123-5030-8505-87e6d270c72a', 'b2d67db7-9815-5978-a76c-07e94a29933e', 'Teresa lazo Bravo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0c559a01-e086-5b84-ae25-34e220729f95', 'b2d67db7-9815-5978-a76c-07e94a29933e', 'Gustavo lazo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'INV-OM-MATOEIRYZIR-5', 'Mireya Ortiz', 5) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('4f9db329-07ec-5656-a435-40c254cbd9d8', '57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'Mireya Ortiz', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('f815fc57-e7f4-5f25-beb6-4656257db672', '57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'Thaymy tellez', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8699cc85-90ef-5d22-9a6e-ec313d53ab37', '57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'Elba lorena tellez', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5a80699b-6646-5fe5-9f5f-030acf87b13f', '57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'Daymarelis tellez', false, 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('1ec1472e-370a-56b8-a9f5-cb4cb7611c02', '57fc6eb7-34f4-5aee-9ac4-8972a424f190', 'Marcos Tellez miranda', false, 5) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e75b1be2-d773-5b1d-b710-f18c346a92f2', 'INV-OM-RBIADREMOIATOGRN-4', 'Rigoberto Miranda', 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0dd9b2d7-6e59-51fb-8426-7ddf6515a81b', 'e75b1be2-d773-5b1d-b710-f18c346a92f2', 'Rigoberto Miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('b2621f0d-8ed3-557a-9918-f0dd32fa737a', 'e75b1be2-d773-5b1d-b710-f18c346a92f2', 'Gabriela martinez', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0eac9cef-6877-54ad-9229-4efa83781b80', 'e75b1be2-d773-5b1d-b710-f18c346a92f2', 'Rigoberto miranda Martínez', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('00b1346f-098b-543b-a967-4afb394d6175', 'e75b1be2-d773-5b1d-b710-f18c346a92f2', 'Gabriel miranda Martínez', false, 4) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('0f85be9b-ea70-5a25-b7a3-33d017f0a821', 'INV-OM-SDFRCUNEOAADEO-2', 'Eduardo Fonseca', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('76339991-119d-5a45-87dc-c9018fc3eed6', '0f85be9b-ea70-5a25-b7a3-33d017f0a821', 'Eduardo Fonseca', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('b63c45b4-0abd-57bb-a468-c56982cd42bf', '0f85be9b-ea70-5a25-b7a3-33d017f0a821', 'Jendry Miranda', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('d6ba6664-ecc9-5179-b915-e61825b4605b', 'INV-OM-KRGAEAMEINEND-2', 'Kengee Miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('cc79e449-5ba4-5948-9475-aadddc4a94e0', 'd6ba6664-ecc9-5179-b915-e61825b4605b', 'Kengee Miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('60b34986-ec4d-56fa-acfb-9ec5428a5f58', 'd6ba6664-ecc9-5179-b915-e61825b4605b', 'Uriel Lazo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('d13015e5-8cc5-51b6-aa5d-4a08963087cb', 'INV-OM-DIASARRNAOM-2', 'Rosa miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7bf3f16f-802f-5c87-9e6f-0826a1a91660', 'd13015e5-8cc5-51b6-aa5d-4a08963087cb', 'Rosa miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('d6694771-4f05-5705-ad52-52e764e65d10', 'd13015e5-8cc5-51b6-aa5d-4a08963087cb', 'Edwin gallo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('1d5c9d67-e69b-5180-b4ff-6c2dbc5544c9', 'INV-OM-ADREBGIALNARIM-2', 'Gabriel miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('517293be-639b-5d7a-95a7-9987529b919b', '1d5c9d67-e69b-5180-b4ff-6c2dbc5544c9', 'Gabriel miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('52582269-4cd3-589d-aa95-507f471914fe', '1d5c9d67-e69b-5180-b4ff-6c2dbc5544c9', 'Arlene Pérez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('3ccb61d4-342d-59b3-ae26-8bb471aba5b7', 'INV-OM-ARNRLEUAIMQAD-2', 'Raquel miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('3f41b98c-4dc1-54ad-bcb6-6c1e29d8d7a3', '3ccb61d4-342d-59b3-ae26-8bb471aba5b7', 'Raquel miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('90d77b91-9ffe-5b0e-b176-9fe91e9146d3', '3ccb61d4-342d-59b3-ae26-8bb471aba5b7', 'Ariel Duriett', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('c15076d8-1aca-5530-b948-4a4a6463c889', 'INV-OM-GNNNOWEIAEILLDL-2', 'Edwin Lenin Gallo', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7009c2e6-c93c-57d8-b24c-e20778369d8c', 'c15076d8-1aca-5530-b948-4a4a6463c889', 'Edwin Lenin Gallo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('2bccfd32-793d-5982-9fea-bd6d447ecfd3', 'c15076d8-1aca-5530-b948-4a4a6463c889', 'Waleska ayesta', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e90f4887-cf7e-54ab-8075-edd3835f0c46', 'INV-OM-AERIZMID-2', 'Imer Díaz', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9c0290d9-da48-5fa1-b3c1-9430edb5d303', 'e90f4887-cf7e-54ab-8075-edd3835f0c46', 'Imer Díaz', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5458a956-f180-501c-8a42-57584d3ad524', 'e90f4887-cf7e-54ab-8075-edd3835f0c46', 'Paola Solis', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('68b845d3-8009-556f-a3a4-30bbb934aa56', 'INV-OM-NIIRWAMDLRADE-2', 'Wilder miranda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('b263fa09-ae04-5c93-a461-e1a0cbd926db', '68b845d3-8009-556f-a3a4-30bbb934aa56', 'Wilder miranda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('63765648-cd4c-59cc-9b61-2c4def68b841', '68b845d3-8009-556f-a3a4-30bbb934aa56', 'Alesta Díaz', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('5aee1499-e401-5de3-8c73-ca2cb38ebcda', 'INV-OM-NNALEAMDABRDII-1', 'Belinda Miranda', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('b96f4707-5c34-57bd-a134-d3e8ac875c09', '5aee1499-e401-5de3-8c73-ca2cb38ebcda', 'Belinda Miranda', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('41789fa5-f736-5a4a-9f1b-e9dba92c48d0', 'INV-OM-YLLYGMLUAOA-1', 'Yulamy Gallo', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('048b549d-fb03-5cc5-965c-28f1796617cc', '41789fa5-f736-5a4a-9f1b-e9dba92c48d0', 'Yulamy Gallo', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('528fd564-17e1-56ca-b190-c825c2b06825', 'INV-OM-ZRLAIEEERAKDRH-2', 'Kadziel Herrera', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7f3114de-e217-59ca-bf21-8808db5ece1a', '528fd564-17e1-56ca-b190-c825c2b06825', 'Kadziel Herrera', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ae7fa6e5-07db-50d9-80f4-ba726190d625', '528fd564-17e1-56ca-b190-c825c2b06825', 'José Antonio Sequeira', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('79e55333-92b3-5402-a425-2005ea792324', 'INV-OM-ZIGNYLLAOAZGNE-2', 'Ayling González', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('69e4fe57-f756-5965-98d8-535acd88a948', '79e55333-92b3-5402-a425-2005ea792324', 'Ayling González', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('345e0452-921e-5d4d-81ac-05b2702a7822', '79e55333-92b3-5402-a425-2005ea792324', 'Nardo Sequiera', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('bb89f9d5-b563-5aa3-820a-94f602fb98d8', 'INV-OM-AMTHNAMRIAR-2', 'Martha Marín', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('10cc7e2a-bf28-5c0d-b251-63cebfaf3fa6', 'bb89f9d5-b563-5aa3-820a-94f602fb98d8', 'Martha Marín', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('17fd9646-7650-55f0-9d3c-46cf72b70bac', 'bb89f9d5-b563-5aa3-820a-94f602fb98d8', 'Martha Sequeira', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('4785e776-029f-52b7-ae76-691664b59ec0', 'INV-OM-FRTNNZAEEIEJML-2', 'Jennifer Maltez', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('4f8eeb5d-60c1-5637-8083-922c487a3bb1', '4785e776-029f-52b7-ae76-691664b59ec0', 'Jennifer Maltez', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('4e88e1a1-fc69-5899-be14-876ca5a51472', '4785e776-029f-52b7-ae76-691664b59ec0', 'Manuel lanzas', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('56c07bde-b490-5c1e-afad-b7c668995403', 'INV-OM-INEOTOMBHECRLXM-2', 'Xochilt Membreño', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5311e54d-60e8-58bb-90f9-88e326ed60f8', '56c07bde-b490-5c1e-afad-b7c668995403', 'Xochilt Membreño', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('808cfa0a-a587-5d7e-a47b-fd264e2ac982', '56c07bde-b490-5c1e-afad-b7c668995403', 'Robin lazo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('665dc823-c6c1-544b-b6f5-246340402f4b', 'INV-OM-ITJDSARRNIO-2', 'Astrid jirón', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('c82a237b-463d-59dc-b142-48870e8812b9', '665dc823-c6c1-544b-b6f5-246340402f4b', 'Astrid jirón', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('f8ace059-9729-539c-915c-b8b268386bf9', '665dc823-c6c1-544b-b6f5-246340402f4b', 'Alvaro Hernández', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e4b6d0f1-449a-53e0-95a4-27ae0f74d24d', 'INV-OM-NAEZNDAODILM-1', 'Linda Mendoza', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9e3b6bca-ac71-5d79-98e5-4cb242d7e23d', 'e4b6d0f1-449a-53e0-95a4-27ae0f74d24d', 'Linda Mendoza', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e6dcd807-49cb-501a-9c5d-90901e4e0d9f', 'INV-OM-AANHALJAOGN-1', 'Johana Galán', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8903533c-6ac0-5338-81d3-716925a0dd10', 'e6dcd807-49cb-501a-9c5d-90901e4e0d9f', 'Johana Galán', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('b9bdf245-3be0-5fc9-9542-0e1556a64200', 'INV-OM-ANONAISGADSUIK-2', 'Aniuska Sándigo', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('793a6d95-45bd-5b50-bf82-aae02108a7e4', 'b9bdf245-3be0-5fc9-9542-0e1556a64200', 'Aniuska Sándigo', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('07e6732c-59a7-51d6-9f4e-35738c9124cc', 'b9bdf245-3be0-5fc9-9542-0e1556a64200', 'Luis armando Sánchez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('17190b01-5df5-5e0e-93c4-3813dc6e6da3', 'INV-OM-MISIALTADLORAALIIC-1', 'María Lidia Castillo', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9c5f259b-444f-5fab-98c5-ee08f4f60fdc', '17190b01-5df5-5e0e-93c4-3813dc6e6da3', 'María Lidia Castillo', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e5169b7c-4797-548b-8efc-0b3e27973fef', 'INV-OM-EAILLUVLJO-2', 'Julio valle', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7d362eba-4350-589f-a5d4-adb28a821119', 'e5169b7c-4797-548b-8efc-0b3e27973fef', 'Julio valle', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('e56f79da-0e39-5a32-b5d3-89079c2fd051', 'e5169b7c-4797-548b-8efc-0b3e27973fef', 'Sharon Gallo', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('75e73a42-15d5-57f1-b589-d3f3e1864c85', 'INV-OM-ZAOIEISERPNUL-5', 'Uriel Espinoza', 5) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5f09218c-9e3c-5fcc-a81f-a222816f9b29', '75e73a42-15d5-57f1-b589-d3f3e1864c85', 'Uriel Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('1e83e2be-81d6-5ce2-84b4-0958926f463e', '75e73a42-15d5-57f1-b589-d3f3e1864c85', 'Sonia Urbina', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('6305262f-12df-53b8-b949-43bc206b7444', '75e73a42-15d5-57f1-b589-d3f3e1864c85', 'Uriel Eespinoza Urbina', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('14b1ff8b-8f9b-59b5-a45e-ec32f0f13b2f', '75e73a42-15d5-57f1-b589-d3f3e1864c85', 'Edelma Espinoza', false, 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('63668329-00cd-5c6a-8e27-410d5ca9e3be', '75e73a42-15d5-57f1-b589-d3f3e1864c85', 'Usiel Espinoza', false, 5) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'INV-OM-SUSPAZNOEILA-5', 'Saul Espinoza', 5) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('73b53c3b-a614-5257-a4dd-84890567f126', 'cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'Saul Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('23b53b2a-61d8-56fd-b2dd-900abd59423e', 'cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'Ninoska espinoza', false, 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0332a331-7b66-5dd0-8abd-814ba5071ee7', 'cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'Diego Espinoza', false, 3) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('03f91b12-a294-58e1-9c0e-bbf3d5c6eed2', 'cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'Marelys Espinoza', false, 4) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('52b31e8a-3612-5c26-81e0-1c3eaf2d5513', 'cfae9c7f-87c1-57b5-9c53-92140dbb2064', 'Saul Espinoza Rosales', false, 5) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e1e797e8-88e0-5275-bb98-9829a0ec6089', 'INV-OM-HZZDABEAAAOSNLNEIOOLPNA-2', 'Ana Hazell Obando Espinoza', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('e4167f94-deee-5da2-905b-e254bfd89325', 'e1e797e8-88e0-5275-bb98-9829a0ec6089', 'Ana Hazell Obando Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('c0207092-fd8c-523e-8e88-edfb0a1f07b1', 'e1e797e8-88e0-5275-bb98-9829a0ec6089', 'Jean Carlo Varela', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('549649a3-300d-5237-b510-848bfcafcc36', 'INV-OM-BOYNASIOEOAKNAMIPDZ-2', 'Mayki Obando Espinoza', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('bd49dc86-4345-55e2-8162-912aeeb77207', '549649a3-300d-5237-b510-848bfcafcc36', 'Mayki Obando Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9457457b-bb34-53cb-a57d-ed360e294284', '549649a3-300d-5237-b510-848bfcafcc36', 'Nardis Bardales', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('914b4024-1ab0-5d5e-b9f9-b844a18b4185', 'INV-OM-RITOOSEMTMLDEELSDAFA-1', 'Matilde Modesta Flores', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('611e7ed5-4071-51dc-b78a-ad6ed06d1821', '914b4024-1ab0-5d5e-b9f9-b844a18b4185', 'Matilde Modesta Flores', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('89f2c996-02a1-5d84-8e3e-31add5d9a296', 'INV-OM-POFARSOMLDENAOPSEORAAB-1', 'Erasmo Obando flores PAPÁ', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('aebb1b31-9dea-562a-9e2c-c8657bcf5cd4', '89f2c996-02a1-5d84-8e3e-31add5d9a296', 'Erasmo Obando flores PAPÁ', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('66477ac5-3a71-542c-ab78-b159f9b4ce8f', 'INV-OM-OLNCAPSBNZIMAAAEMA-1', 'Blanca Espinoza MAMÁ', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5c7036bf-54c8-5daf-bf5b-ef06b7555522', '66477ac5-3a71-542c-ab78-b159f9b4ce8f', 'Blanca Espinoza MAMÁ', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('e73c4398-b8e4-5770-bdac-84cc51e2792f', 'INV-OM-AADREPZLGSINONI-2', 'Darling Espinoza', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('a865d6ae-06b4-5c23-b3ef-b6cd16163f34', 'e73c4398-b8e4-5770-bdac-84cc51e2792f', 'Darling Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('80a74c26-3d7b-5691-8c9c-f67f853ef9f4', 'e73c4398-b8e4-5770-bdac-84cc51e2792f', 'Joaquín Navarro', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('08b1828e-a088-52a8-81d5-76c8fec8b873', 'INV-OM-OZSNARPMTAIEIZA-2', 'Maritza Espinoza', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('f9b8e01b-79c1-5444-9c02-2b3391c25999', '08b1828e-a088-52a8-81d5-76c8fec8b873', 'Maritza Espinoza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('e942abf3-e213-5ec7-9bd7-e37b5b65cfed', '08b1828e-a088-52a8-81d5-76c8fec8b873', 'Rolando Ortega', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('364bdae4-367e-59a5-b481-f2cc2b5fc4f2', 'INV-OM-OIGALPLMLAAUEZ-2', 'Miguel plazaola', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5e917722-cf8e-592d-b582-53ea89e8de93', '364bdae4-367e-59a5-b481-f2cc2b5fc4f2', 'Miguel plazaola', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ea25f205-2b45-52c1-bbcd-9a098f7bcb2e', '364bdae4-367e-59a5-b481-f2cc2b5fc4f2', 'Lisbeth cantarero', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('d08b680d-2267-5580-8dcb-4ba14d0d13e0', 'INV-OM-DGPASADGERRLAAAE-2', 'Edgar Largaespada', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('497346d9-340c-5f8a-b312-235baa29737a', 'd08b680d-2267-5580-8dcb-4ba14d0d13e0', 'Edgar Largaespada', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('3ca5fdab-395d-5f67-8bd1-ea5fefd9c8d3', 'd08b680d-2267-5580-8dcb-4ba14d0d13e0', 'Reyna Perez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('97933784-9f60-5160-b777-08c2a3156581', 'INV-OM-NEGEOLRBO-2', 'Noel Borge', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('90ce3c17-457d-567e-8c31-8251658be3df', '97933784-9f60-5160-b777-08c2a3156581', 'Noel Borge', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('149a12f1-c6b8-5f9e-9c19-e5b1939849c2', '97933784-9f60-5160-b777-08c2a3156581', 'Aura Bolaños', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('eb0ad877-8587-5808-8098-a76b93bbcba5', 'INV-OM-UERYAASLAT-2', 'Raúl Ayesta', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('74af17ed-fdb9-5f86-ae62-2a5a37c9dd6a', 'eb0ad877-8587-5808-8098-a76b93bbcba5', 'Raúl Ayesta', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('637a985d-133f-550e-b724-04440f049840', 'eb0ad877-8587-5808-8098-a76b93bbcba5', 'Alba Balladares', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('356f9f43-49db-53e3-988f-ba158f31a50e', 'INV-OM-IFRAOMTONDELAZ-2', 'Adolfo Martinez', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8ec8367b-c73c-55bd-b9e7-81dfeff5929b', '356f9f43-49db-53e3-988f-ba158f31a50e', 'Adolfo Martinez', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('881316e5-fdc7-5ec2-85e3-df41b19be330', '356f9f43-49db-53e3-988f-ba158f31a50e', 'Claudia Mayorga', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('aa36de7b-b47a-5086-bed1-b98f118a3726', 'INV-OM-ETNESIPREOAETNGNOMH-2', 'Stephanie Montenegro', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('052a8d7d-adf7-534a-bcd7-e8978f56fd09', 'aa36de7b-b47a-5086-bed1-b98f118a3726', 'Stephanie Montenegro', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('5ff42d3a-cff6-5ea5-83d7-c08a64019cb7', 'aa36de7b-b47a-5086-bed1-b98f118a3726', 'Martin  Dávila', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('23a53213-1e75-5ef6-b985-c41138d27160', 'INV-OM-EIMDAZANTIARANIP-2', 'Itza marina pineda', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('402a7512-b4e7-59ef-972d-4d159a60f9e8', '23a53213-1e75-5ef6-b985-c41138d27160', 'Itza marina pineda', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('82a91d35-525f-5cf6-8168-31df79ab0e9c', '23a53213-1e75-5ef6-b985-c41138d27160', 'Jordan peralta', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('b876d66e-121d-5baa-921f-c7a8a83077c4', 'INV-OM-EMLEASNBLOCTAL-2', 'Melba Castellón', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('975fdbea-ef3e-5cf6-a128-e0a60838c570', 'b876d66e-121d-5baa-921f-c7a8a83077c4', 'Melba Castellón', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('10874409-0470-5ad0-8cbd-81c1395d82d8', 'b876d66e-121d-5baa-921f-c7a8a83077c4', 'Guillermo Ayesta', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('454f130f-7d09-5987-9f9a-b2cb118b79c0', 'INV-OM-RVAALAOTSEYA-2', 'Álvaro Ayesta', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8830f90f-f1fe-523e-883b-99c1d1a28ec0', '454f130f-7d09-5987-9f9a-b2cb118b79c0', 'Álvaro Ayesta', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('35f053de-2b0d-5931-bae2-9a9fddbe42dc', '454f130f-7d09-5987-9f9a-b2cb118b79c0', 'Nadin Arguello', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('eb63f84b-d8ee-5e8c-8c18-c9c21bb00c05', 'INV-OM-LAYASETEMBA-1', 'Melba Ayesta', 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8a2eef8e-6d97-57d0-a169-b3f96733fdb1', 'eb63f84b-d8ee-5e8c-8c18-c9c21bb00c05', 'Melba Ayesta', true, 1) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('b0fb91bc-1cc0-51eb-b8bb-bcf4710321cf', 'INV-OM-ACREIRRHAYAAVMI-2', 'Mireya chavarria', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('7232c2a1-1146-579d-b641-c06cf691df81', 'b0fb91bc-1cc0-51eb-b8bb-bcf4710321cf', 'Mireya chavarria', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9b1d32b1-40cf-5af2-9879-623c84bc8348', 'b0fb91bc-1cc0-51eb-b8bb-bcf4710321cf', 'Bismark amador', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('51043c03-878a-5934-b095-8be2b0ef979c', 'INV-OM-ACLMLJRADIEON-2', 'Jamil Calderón', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('494f702e-6ac3-5ec4-8da5-e55926c2aa19', '51043c03-878a-5934-b095-8be2b0ef979c', 'Jamil Calderón', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('8729bc87-45d8-5a28-9dd6-bb9796ca25c3', '51043c03-878a-5934-b095-8be2b0ef979c', 'Dayanara Enríquez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('bfc7deec-8d7e-539c-b7fb-4e281db08614', 'INV-OM-UBGAOOALZDS-2', 'Douglas boza', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('9b22611c-85dd-54d3-b2bf-05e178a2a31c', 'bfc7deec-8d7e-539c-b7fb-4e281db08614', 'Douglas boza', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('e474c6e8-a156-5a0e-bdb6-990c914486b1', 'bfc7deec-8d7e-539c-b7fb-4e281db08614', 'Reina Ramírez', false, 2) on conflict (id) do nothing;

insert into public.invitaciones (id, codigo, nombre_familia, cantidad_puestos) values ('72982900-64f4-5736-9ff5-9e91ef3718e2', 'INV-OM-ADOREZTNINALSEADFNE-2', 'Etanislado Fernández', 2) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('ae0f6a6a-239e-5338-b639-4b2d6f412e32', '72982900-64f4-5736-9ff5-9e91ef3718e2', 'Etanislado Fernández', true, 1) on conflict (id) do nothing;
insert into public.invitados (id, invitacion_id, nombre_completo, es_principal, orden) values ('0b758978-6b23-56d7-aa7f-09d4c7272487', '72982900-64f4-5736-9ff5-9e91ef3718e2', 'Socorro Diaz', false, 2) on conflict (id) do nothing;

commit;

-- Validación: puestos asignados vs. personas con nombre por invitación
select i.codigo, i.nombre_familia, i.cantidad_puestos, count(g.id) as invitados_nombrados
from public.invitaciones i left join public.invitados g on g.invitacion_id = i.id
group by i.id order by i.codigo;