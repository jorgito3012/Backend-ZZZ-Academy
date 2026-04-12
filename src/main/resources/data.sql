INSERT INTO agentes (nombre, elemento, especialidad, rango, rareza) 
VALUES ('Ellen Joe', 'Hielo', 'Ataque', 'S', 5) 
ON CONFLICT DO NOTHING;

INSERT INTO wengines (nombre, rareza_base, tipo_especialidad) 
VALUES ('Deep Sea Visitor', 'S', 'Ataque') 
ON CONFLICT DO NOTHING;
