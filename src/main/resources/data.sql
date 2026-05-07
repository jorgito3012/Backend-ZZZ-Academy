-- Vaciamos las tablas para poder recargar los datos de cero sin fallos
TRUNCATE TABLE agentes CASCADE;

-- Insertamos Agentes (Personajes)
INSERT INTO agentes (nombre, rango, elemento, rol, descripcion, imagen_url, estadisticas_lvl60) VALUES 
(
  'Ellen Joe', 
  'S', 
  'HIELO', 
  'ATACANTE', 
  'Una maid perezosa pero letal de Victoria Housekeeping.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/6/6f/Character_Ellen_Portrait.png',
  '{"hp": 7654, "atk": 880, "def": 650, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Anby Demara', 
  'A', 
  'ELECTRICO', 
  'ATURDIDOR', 
  'Una chica misteriosa y calmada de los Cunning Hares. Le encantan las hamburguesas.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/8/87/Character_Anby_Portrait.png',
  '{"hp": 6800, "atk": 710, "def": 700, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Zhu Yuan', 
  'S', 
  'ETER', 
  'ATACANTE', 
  'La dedicada líder de la patrulla especial de Seguridad Pública de Nueva Eridu.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/b/b3/Character_Zhu_Yuan_Portrait.png',
  '{"hp": 7200, "atk": 910, "def": 600, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Von Lycaon', 
  'S', 
  'HIELO', 
  'ATURDIDOR', 
  'El refinado y letal mayordomo lobo de Victoria Housekeeping.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/9/91/Character_Lycaon_Portrait.png',
  '{"hp": 8100, "atk": 740, "def": 820, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Nicole Demara', 
  'A', 
  'ETER', 
  'APOYO', 
  'La astuta líder de los Cunning Hares, siempre en busca del próximo gran pago.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/7/77/Character_Nicole_Portrait.png',
  '{"hp": 6500, "atk": 680, "def": 610, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Nekomata', 
  'S', 
  'FISICO', 
  'ATACANTE', 
  'Una gata enérgica y letal. La curiosidad mató al gato, pero ella tiene siete vidas.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/1/14/Character_Nekomata_Portrait.png',
  '{"hp": 7100, "atk": 890, "def": 620, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Grace Howard', 
  'S', 
  'ELECTRICO', 
  'ANOMALO', 
  'Una brillante mecánica de Belobog Heavy Industries obsesionada con las máquinas.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/4/4b/Character_Grace_Portrait.png',
  '{"hp": 7800, "atk": 810, "def": 690, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
),
(
  'Ben Bigger', 
  'A', 
  'FUEGO', 
  'DEFENSIVO', 
  'Un oso literal. Es el contable de Belobog Heavy Industries.', 
  'https://static.wikia.nocookie.net/zenless-zone-zero/images/f/f2/Character_Ben_Portrait.png',
  '{"hp": 10500, "atk": 610, "def": 950, "crit_rate": 5.0, "crit_dmg": 50.0}'::jsonb
);
