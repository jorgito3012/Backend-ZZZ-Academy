-- =========================================================================
-- SCRIPT DE INICIALIZACIÓN DE ZZZ ACADEMY (VERSIÓN BASE DE DATOS COMPLETA 1.0)
-- =========================================================================

TRUNCATE TABLE agentes CASCADE;
TRUNCATE TABLE w_engines CASCADE;
TRUNCATE TABLE sets_discos CASCADE;

-- =========================================================================
-- 2. DISCOS (Pistas de Datos)
-- =========================================================================
INSERT INTO sets_discos (id, nombre, efecto2pc, efecto4pc, imagen_url) VALUES 
(1, 'Tecno pícido', 'Probabilidad de Crítico +8 %.', 'Al golpear al enemigo con un ataque normal, un contraataque o una técnica especial EX, ejecuta un golpe crítico y otorga al portador 1 carga de bonificación. Cada carga aumenta el Ataque del portador en un 9 % durante 6 s. La duración de cada técnica se cuenta por separado.', '/uploads/Tecno pícido.jpg'),
(2, 'Jazz oscilante', 'Recuperación de Energía +20 %.', 'Al ejecutar una técnica en cadena o una técnica definitiva, aumenta el daño infligido por todos los miembros del equipo en un 15 % durante 12 s. Este efecto no se acumula con otros efectos del mismo nombre.', '/uploads/Jazz oscilante.jpg'),
(3, 'Disco sacudestrellas', 'Impacto +6 %.', 'Aumenta el Aturdimiento infligido al objetivo principal por un ataque normal, un ataque rápido o un contraataque en un 20 %.', '/uploads/Disco sacudestrellas.jpg'),
(4, 'Tecno tetraodóntido', 'Tasa de Perforación +8 %.', 'Aumenta el daño infligido por técnicas definitivas en un 20 %. Al ejecutar una técnica definitiva, aumenta el Ataque del portador en un 15 % durante 12 s.', '/uploads/Tecno tetraodóntido.jpg'),
(5, 'Punk hormonal', 'Ataque +10 %.', 'Al entrar en combate o al sustituir a un agente activo, aumenta el Ataque del portador en un 25 % durante 10 s. Puede activarse una vez cada 20 s.', '/uploads/Punk hormonal.jpg'),
(6, 'Blues libre', 'Maestría de Anomalía +30 ptos.', 'Al golpear al enemigo con una técnica especial EX, reduce su resistencia a la Anomalía de Atributo correspondiente en un 20 % durante 8 s. No se acumula con efectos del mismo tipo.', '/uploads/Blues libre.jpg'),
(7, 'Metal infernal', 'Daño ígneo +10 %.', 'Al golpear a un enemigo afectado por calcinación, aumenta la Probabilidad de Crítico del portador en un 28 % durante 8 s.', '/uploads/Metal infernal.jpg'),
(8, 'Rock espiritual', 'Defensa +16 %.', 'Al perder PV por un ataque enemigo, se reduce el daño recibido del portador en un 40 % durante 2.5 s. Puede activarse 1 vez cada 15 s.', '/uploads/Rock espiritual.jpg'),
(9, 'Metal eléctrico', 'Daño eléctrico +10 %.', 'Mientras haya enemigos afectados por electrochoque en combate, aumenta el Ataque del portador en un 28 %.', '/uploads/Metal eléctrico.jpg'),
(10, 'Metal caótico', 'Daño etéreo +10 %.', 'Aumenta el Daño Crítico del portador en un 20 %. Cuando cualquier miembro del equipo inflige daño adicional por medio del efecto de corrupción, dicha bonificación aumenta en un 5.5 % adicional durante 8 s. Pueden acumularse hasta 6 cargas. La duración se reinicia con cada activación.', '/uploads/Metal caótico.jpg'),
(11, 'Metal colmilludo', 'Daño físico +10 %.', 'Cuando cualquier miembro del equipo provoca embestida al enemigo, aumenta el daño infligido por el portador al objetivo en un 35 % durante 12 s.', '/uploads/Metal colmilludo.jpg'),
(12, 'Metal polar', 'Daño glacial +10 %.', 'Aumenta el daño infligido por el ataque normal y el ataque rápido en un 20 %. Además, cuando un enemigo se ve afectado por los efectos de congelación o ruptura de hielo de cualquier miembro del equipo, el efecto aumenta en un 20 % durante 12 s.', '/uploads/Metal polar.jpg'),
(13, 'Jazz caótico', 'Maestría de Anomalía +30 ptos.', 'El daño ígneo y el daño eléctrico aumentan en un 15 %. Cuando el agente está inactivo, el daño infligido por la técnica especial EX y el ataque de apoyo aumenta en un 20 %. Una vez que el agente se vuelve activo, este efecto se prolonga durante 5 s. Puede activarse una vez cada 7.5 s.', '/uploads/Jazz caótico.jpg'),
(14, 'Punk primitivo', 'Escudo +15%.', 'Cuando cualquier miembro del equipo ejecuta un apoyo defensivo o un apoyo evasivo, el daño provocado por todos los miembros del equipo aumenta en un 15 % durante 10 s. Este efecto no se acumula con otros efectos del mismo nombre.', '/uploads/Punk primitivo.jpg'),
(15, 'Balada de la rama y la espada', 'Daño Crítico +16 %.', 'Si la Tasa de Anomalía es igual o mayor a 115 ptos., el Daño Crítico del portador aumenta en un 30 %. Cuando cualquier miembro del equipo provoca congelación o ruptura de hielo sobre un enemigo, la Probabilidad de Crítico del portador aumenta en un 12 % durante 15 s.', '/uploads/Balada de la rama y la espada.jpg'),
(16, 'Voz astral', 'Ataque +10 %.', 'Cuando cualquier miembro del equipo entra en combate por medio de un apoyo rápido, todos los miembros del equipo obtienen 1 carga de eufonía durante 15 s. Pueden acumularse hasta 3 cargas. La duración se reinicia con cada activación. Por cada carga de eufonía, el daño infligido de los miembros del equipo que entran en combate por medio de un apoyo rápido aumenta en un 8 %. Este efecto solo puede aplicarse una vez por todos los miembros del equipo.', '/uploads/Voz astral.jpg'),
(17, 'Armonía umbría', 'El daño infligido por la réplica y el ataque rápido aumenta en un 15 %.', 'Al golpear a un enemigo con una réplica o un ataque rápido, si el daño infligido es del mismo atributo que el del portador, obtiene 1 carga de bonificación. Puede activarse un máximo de una vez por cada habilidad. Por cada carga de bonificación, el Ataque y la Probabilidad de Crítico del portador aumentan en un 4 % y un 4 % respectivamente durante 15 s. Pueden acumularse hasta 3 cargas. La duración se reinicia con cada activación.', '/uploads/Armonía umbría.jpg'),
(18, 'Melodía de Faetón', 'Tasa de Anomalía +8 %.', 'Cuando cualquier miembro del equipo ejecuta una técnica especial EX, la Maestría de Anomalía del portador aumenta en 45 ptos. durante 8 s. Si el agente que ejecuta la técnica especial EX no es portador, aunmenta el daño etéreo infligido por el portador en un 25 %.', '/uploads/Melodía de Faetón.jpg'),
(19, 'Monarca del Pináculo', 'El Aturdimiento provocado por los ataques aumenta en un 6%.', 'Cuando el portador es un agente aturdidor y ejecuta la técnica especial EX o la técnica en cadena, el Daño Crítico de todos los personajes del equipo aumenta en un 15%; si la Probabilidad de Crítico del portador es mayor o igual a un 50%, el Daño Crítico aumenta en un 15% adicional, durante 15s. La duración se reinicia con cada activación. Los efectos pasivos con el mismo nombre no se pueden acumular.', '/uploads/Monarca del Pináculo.jpg'),
(20, 'Fábula Yunkui', 'PV +10%', 'Al ejecutar la técnica especial EX, la técnica en cadena o la técnica definitiva, la Probabilidad de Crítico aumenta en un 4% durante 15s. Pueden acumularse hasta 3 cargas. La duración se reinicia con cada activación. Al contar con 3 cargas de este efecto, el daño bruto aumenta en un 10%.', '/uploads/Fábula Yunkui.jpg'),
(21, 'Nana a la luz cenicienta', 'Recuperación de Energía +20 %.', 'Cuando el portador es un personaje auxiliar, al ejecutar la técnica especial EX o la técnica definitiva, el daño infligido por todos los personajes del equipo aumenta en un 18 % durante 25 s. La duración se reinicia con cada activación. Los efectos pasivos con el mismo nombre no se pueden acumular.', '/uploads/Nana a la luz cenicienta.jpg'),
(22, 'Floración del alba', 'El daño infligido por el ataque normal aumenta en un 15 %.', 'El daño del ataque normal aumenta en un 20 %. Si el portador es un personaje atacante, al usar una técnica especial EX o una técnica definitiva, el daño del ataque normal aumenta en un 20 % adicional durante 25 s. La duración se reinicia con cada activación.', '/uploads/Floración del alba.jpg'),
(23, 'Aria radiante', 'Daño etéreo +10%.', 'Cuando el portador golpea a un enemigo con el ataque normal, su Maestría de Anomalía aumenta en 36 ptos. durante 8 s. La duración se reinicia con cada activación. Al provocar Aturdimiento sobre un enemigo en el campo de batalla, el daño infligido por el portador aumenta en un 25 % durante 18 s. La duración se reinicia con cada activación.', '/uploads/Aria radiante.jpg'),
(24, 'Balada de aguas blancas', 'Daño físico +10%.', 'Cuando el portador se encuentra en cualquier velo etéreo, su Probabilidad de Crítico aumenta en un 10%. Tras salir de velo etéreo, este efecto se prolonga durante 15 s. Si el portador es un personaje atacante, al activar o extender velo etéreo, la Probabilidad de Crítico aumenta en un 10 % y el Ataque aumenta en un 10% durante 30 s. La duración se reinicia con cada activación.', '/uploads/Balada de aguas blancas.jpg'),
(25, 'Diario de una prisionera', 'Daño glacial +10%.', 'Cuando el portador activa floridez, su Maestría de Anomalía aumenta en 48 ptos. durante 30 s. La duración se reinicia con cada activación. Al activar el efecto de congelación, el daño de Anomalía de Atributo y el de disfunción infligidos por el portador aumentan en un 16 % durante 30 s. La duración se reinicia con cada activación.', '/uploads/Diario de una prisionera.jpg'),
(26, 'Conejo en el país de las maravillas', 'PV +10%.', 'Si el portador es un personaje defensivo: cuando el portador ejecuta la técnica especial EX o cualquier personaje del equipo ejecuta un apoyo defensivo o apoyo evasivo, el daño infligido por todos los personajes del equipo aumenta en un 6 %. Pueden acumularse hasta 3 cargas durante 25 s. Las cargas se reducen una a una, y la duración se reinicia al obtener o perder cargas. Los efectos pasivos con el mismo nombre no se pueden acumular.', '/uploads/Conejo en el país de las maravillas.jpg');



-- =========================================================================
-- 3. W-ENGINES (Amplificadores)
-- =========================================================================
INSERT INTO w_engines (id, nombre, rareza, especialidad, descripcion, stat_principal, ataque_base, imagen_url) VALUES
(1, 'Ceniza - Cobalto', 'B', 'DISRUPTIVO', 'Al entrar en combate o al sustituir a un agente activo, el Ataque del portador aumenta en un 7.2 / 8.2 / 9.3 / 10.4 / 11.5% durante 10s. Puede activarse un máximo de una vez cada 20s.', 'PV: 20%', '475', '/uploads/Ceniza - Cobalto.webp'),
(2, 'Identidad - Desinencia', 'B', 'DEFENSIVO', 'Al recibir un golpe, se reduce el daño recibido por el atacante en un 6 / 7 / 8 / 9 / 10 % durante 12 s.', 'Defensa: 32%', '475', '/uploads/Identidad - Desinencia.webp'),
(3, 'Identidad - Raíz', 'B', 'DEFENSIVO', 'Al recibir un golpe, aumenta la Defensa del portador en un 20 / 23 / 26 / 29 / 32 % durante 8 s.', 'Defensa: 32%', '475', '/uploads/Identidad - Raiz.webp'),
(4, 'Tormenta magnética - Charlie', 'B', 'ANOMALO', 'Cuando cualquier miembro del equipo provoque una Anomalía de Atributo sobre el enemigo, el portador recupera 3.5 / 4 / 4.5 / 5 / 5.5 ptos. de energía. Puede activarse una vez cada 12 s.', 'Tasa de Perforación: 16%', '475', '/uploads/Tormenta magnetica - Charlie.webp'),
(5, 'Tormenta magnética - Bravo', 'B', 'ANOMALO', 'Al acumular Anomalía de Atributo, aumenta la Maestría de Anomalía del portador en 25 / 28 / 32 / 36 / 40 ptos. durante 10 s. Puede activarse una vez cada 20 s.', 'Maestría de Anomalía: 60', '475', '/uploads/Tormenta magnetica - Bravo.webp'),
(6, 'Tormenta magnética - Alfa', 'B', 'ANOMALO', 'Al acumular Anomalía de Atributo, aumenta la Tasa de Anomalía del portador en 25 / 28 / 32 / 36 / 40 ptos. durante 10 s. Puede activarse 1 vez cada 20 s.', 'Ataque: 20%', '475', '/uploads/Tormenta magnetica - Alfa.webp'),
(7, 'Turbulencia - Hacha', 'B', 'ATURDIDOR', 'Al entrar en combate o al sustituir a un agente activo, aumenta el Impacto del portador en un 9 / 10 / 11 / 12 / 13 % durante 10 s. Puede activarse una vez cada 20 s.', 'Recuperación de Energía: 40%', '475', '/uploads/Turbulencia - Hacha.webp'),
(8, 'Turbulencia - Flecha', 'B', 'ATURDIDOR', 'Al golpear a un enemigo, aumenta el Aturdimiento provocado por el portador al objetivo en un 8 / 9 / 10 / 11 / 12 %.', 'Impacto: 12%', '475', '/uploads/Turbulencia - Flecha.webp'),
(9, 'Turbulencia - Arcabuz', 'B', 'ATURDIDOR', 'Aumenta el Aturdimiento provocado por técnicas especiales EX en un 10 / 11.5 / 13 / 14.5 / 16 %.', 'Ataque: 20%', '475', '/uploads/Turbulencia - Arcabuz.webp'),
(10, 'Repercusión - Modelo III', 'B', 'APOYO', 'Al ejecutar una técnica en cadena o una técnica definitiva, aumenta el Ataque de todos los miembros del equipo en un 8 / 9 / 10 / 11 / 12 % durante 10 s. Puede activarse una vez cada 20 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'PV: 20%', '475', '/uploads/Repercusion - Modelo III.webp'),
(11, 'Repercusión - Modelo II', 'B', 'APOYO', 'Al ejecutar una técnica especial EX o una técnica en cadena, aumenta la Tasa de Anomalía de todos los miembros del equipo en 10 / 12 / 13 / 15 / 16 ptos. durante 10 s. Puede activarse 1 vez cada 20 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Recuperación de Energía: 40%', '475', '/uploads/Repercusion - Modelo II.webp'),
(12, 'Repercusión - Modelo I', 'B', 'APOYO', 'Al ejecutar una técnica especial EX, aumenta el Impacto de todos los miembros del equipo en un 8 / 9 / 10 / 11 / 12 % durante 10 s. Puede activarse una vez cada 20 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Ataque', 475, '/uploads/Repercusion - Modelo I.webp'),
(13, 'Fase lunar - Novilunio', 'B', 'ATACANTE', 'Al ejecutar una técnica especial EX, el portador recupera 3 / 3.5 / 4 / 4.5 / 5 ptos. de energía. Puede activarse una vez cada 12 s.', 'Probabilidad de Crítico: 16%', '475', '/uploads/Fase lunar - Novilunio.webp'),
(14, 'Fase lunar - Luna menguante', 'B', 'ATACANTE', 'Al ejecutar una técnica en cadena o una técnica definitiva, aumenta el daño infligido por el portador en un 15 / 17.5 / 20 / 22.5 / 25 % durante 6 s.', 'Ataque: 20%', '475', '/uploads/Fase lunar - Luna menguante.webp'),
(15, 'Fase lunar - Plenilunio', 'B', 'ATACANTE', 'Aumenta el daño infligido por ataque normal, ataque rápido y contraataque en un 12 / 14 / 16 / 18 / 20 %.', 'Ataque: 20%', '475', '/uploads/Fase lunar - Plenilunio.webp'),
(16, 'Caldero ardiente', 'A', 'ATURDIDOR', 'Al ejecutar un ataque sucesivo, el Aturdimiento provocado por el portador aumenta en un 7.2 / 8.2 / 9.2 / 10.2 / 11.5 % y el daño del portador aumenta en un 7.2 / 8.2 / 9.2 / 10.2 / 11.5 % durante s. La duración se reinicia con cada activación.', 'Impacto: 15%', '594', '/uploads/Caldero ardiente.webp'),
(17, 'Caldero de la claridad', 'A', 'DISRUPTIVO', 'Cuando el portador ejecuta una técnica especial EX, obtiene 1 carga de bonificación. Por cada carga de bonificación, el daño que inflige el portador aumenta en un 4 / 4.6 / 5.2 / 5.8 / 6.4 %. Pueden acumularse hasta 3 cargas durante 20 s. Solo puede activarse una vez cada 0.5 s. La duracion se reinicia con cada activación. Al tener 3 cargas de bonificación, la Probabilidad de Crítico del portador aumenta en un 6.5 / 7.5 / 8.5 / 9.4 / 10.4 %.', 'PV: 25%', '594', '/uploads/Caldero de la claridad.webp'),
(18, 'Ignición fatua', 'A', 'DISRUPTIVO', 'El daño ígneo infligido por el portador aumenta en un 15 / 17.25 / 19.5 / 21.75 / 24 %. Cuando los PV del portador disminuyen, la Probabilidad de Crítico aumenta en un 15 / 17.25 / 19.5 / 21.75 / 24 % durante 5 s.', 'PV: 25%', '624', '/uploads/Ignicion fatua.webp'),
(19, 'Tránsito herciano', 'A', 'DISRUPTIVO', 'Al ejecutar la técnica en cadena o la técnica definitiva, el portador obtiene una carga de bonificación. Por cada carga, la Fuerza Bruta del portador aumenta en 80 / 92 / 104 / 116 / 128 ptos. durante 12s. Pueden acumularse hasta 3 cargas. La duración de cada carga es independiente.', 'PV: 25%', '594', '/uploads/Tránsito herciano.webp'),
(20, 'Rompecabezas ilusorio', 'A', 'DISRUPTIVO', 'Al ejecutar la técnica especial EX, el Daño Crítico del portador aumenta en un 16 / 18.4 / 20.8 / 23.2 / 25.6% durante 12s. Además, si los PV actuales del objetivo son inferiores al 50% de sus PV máx., el daño infligido por la técnica especial EX aumenta en un 20 / 23 / 26 / 29 / 32%.', 'Ataque: 25%', '594', '/uploads/Rompecabezas ilusorio.webp'),
(21, 'Proyector de celuloide', 'A', 'DEFENSIVO', 'Cuando los PV de cualquier personaje del equipo son mayores o iguales al 7.5 / 8.6 / 9.7 / 10.8 / 12%, el daño recibido se reduce en un 50% y la contaminación miasmática recibida se reduce en un 10 / 11.5 / 13 / 14.5 / 16%. Este efecto solo puede aplicarse una vez por todo el equipo.', 'Impacto: 15%', '594', '/uploads/Proyector de celuloide.webp'),
(22, 'Receptáculo de trigramas sísmico', 'A', 'DEFENSIVO', 'El daño infligido por la técnica especial EX y la técnica definitiva del portador aumenta en un 25 / 28.7 / 32.5 / 36.2 / 40%. Cuando cualquier miembro del equipo recibe daño o recupera PV, el portador recupera 2 / 2.3 / 2.6 / 2.9 / 3.2 ptos. de Energía. Puede activarse un máximo de una vez cada 5s.', 'Ataque: 25%', '624', '/uploads/Receptaculo de trigramas sismico.webp'),
(23, 'Cúter', 'A', 'ATURDIDOR', 'Al ejecutar una réplica, el daño físico infligido y el Aturdimiento provocado por el portador aumentan en un 15 / 17.3 / 19.5 / 21.8 / 24 % y en un 10 / 11.5 / 13 / 14.5 / 16 % respectivamente durante 10 s.', 'Impacto: 15%', '624', '/uploads/Cuter.webp'),
(24, 'Anhelo marcato', 'A', 'ATACANTE', 'Al golpear a un enemigo con la técnica especial EX o la técnica en cadena, el Ataque del portador aumenta en un 6 / 6.9 / 7.8 / 8.7 / 9.6 % durante 8 s. Cuando el objetivo está afectado por Anomalía de Atributo, este efecto aumenta en un 6 / 6.9 / 7.8 / 8.7 / 9.6 % adicional.', 'Probabilidad de Crítico: 20%', '594', '/uploads/Anhelo marcato.webp'),
(25, 'Pacificador especializado', 'A', 'DEFENSIVO', 'Cuando el portador tiene un escudo, su Recuperación de Energía aumenta en 0.4 ptos./s. La acumulación de Anomalía de Atributo de la técnica especial EX y del ataque sucesivo aumenta en un 36 / 40 / 45 / 50 / 55 % y en un 36 / 40 / 45 / 50 / 55 % respectivamente.', 'Ataque: 25%', '624', '/uploads/Pacificador especializado.webp'),
(26, 'Florescencia aurífera', 'A', 'ATACANTE', 'El Ataque aumenta en un 6 / 6.9 / 7.8 / 8.7 / 9.6 %. El daño infligido por la técnica especial EX aumenta en un 15 / 17.2 / 19.5 / 21.8 / 24 %.', 'Ataque: 25%', '594', '/uploads/Florescencia aurifera.webp'),
(27, 'Viaje estruendoso', 'A', 'ANOMALO', 'Al golpear a un enemigo con una técnica especial EX, se genera al azar uno de los siguientes tres efectos durante 5 s. Pueden activarse una vez cada 0.3 s. No se acumulan con otros efectos del mismo tipo. La duración se reinicia con cada activación. Pueden acumularse distintos efectos a la vez: Aumenta el Ataque del portador en un 8 / 9.2 / 10.4 / 11.6 / 12.8 %; aumenta la Maestría de Anomalía del portador en 40 / 46 / 52 / 58 / 64 ptos.; aumenta la Anomalía de Atributo del portador en un 25 / 28 / 32 / 36 / 40 %.', 'Ataque: 25%', '624', '/uploads/Viaje estruendoso.webp'),
(28, 'Cañón bombástico', 'A', 'APOYO', 'Cuando cualquier unidad aliada del equipo golpea a un enemigo, el Ataque de todas las unidades aliadas aumenta en un 2.5 / 2.8 / 3.2 / 3.6 / 4 % durante 8 s. Pueden acumularse hasta 4 cargas. La duración de cada carga es independiente. Cada unidad aliada puede acumular 1 carga de este efecto. Este efecto no se acumula con otros efectos del mismo nombre.', 'Recuperación de Energía: 50%', '624', '/uploads/Cañón bombastico.webp'),
(29, 'Barril giratorio', 'A', 'ATURDIDOR', 'Cada 3 s el portador obtendrá 1 carga de este efecto. Pueden acumularse hasta 6 cargas. Al ejecutar una técnica especial EX, consumirá todas las cargas. Por cada carga consumida, aumenta el Aturdimiento provocado por dicha técnica en un 4 / 4.6 / 5.2 / 5.8 / 6.4 %.', 'Impacto: 15%', '594', '/uploads/Barril giratorio.webp'),
(30, 'Bola de juego desenfrenada', 'A', 'APOYO', 'Cuando el portador contrarreste al enemigo, aumenta la Probabilidad de Crítico de todos los miembros del equipo sobre el objetivo en un 12 / 13.5 / 15.5 / 17.5 / 20 % durante 12 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Recuperación de Energía: 50%', '594', '/uploads/Bola de juego desenfrenada.webp'),
(31, 'Rotor de cañón', 'A', 'ATACANTE', 'El Ataque aumenta en un 7.5 / 8.6 / 9.7 / 10.8 / 12 %. Al golpear al enemigo con un golpe crítico, el portador inflige daño adicional equivalente al 200 % de su Ataque. Puede activarse una vez cada 8 / 7.5 / 7 / 6.5 / 6 s.', 'Probabilidad de Crítico: 20%', '594', '/uploads/Rotor de cañon.webp'),
(32, 'Demonio cohibido', 'A', 'APOYO', 'Aumenta el daño glacial en un 15 / 17.5 / 20 / 22 / 24 %. Al ejecutar una técnica especial EX, aumenta el Ataque de todos los miembros del equipo en un 2 / 2.3 / 2.6 / 2.9 / 3.2 % durante 12 s. Pueden acumularse hasta 4 cargas. La duración se reinicia por cada activación. Este efecto no se acumula con otros efectos del mismo nombre.', 'Ataque: 25%', '634', '/uploads/Demonio cohibido.webp'),
(33, 'Cilindro neumático de Bigger', 'A', 'DEFENSIVO', 'Reduce el daño recibido en un 7.5 / 8.5 / 9.5 / 10.5 / 12 %. Al recibir un golpe, la próxima vez que el portador golpee al enemigo, infligirá daño adicional equivalente al 600 / 690 / 780 / 870 / 960 % de su Defensa y será un golpe crítico. Puede activarse una vez cada 7.5 s.', 'Defensa: 40%', '624', '/uploads/Cilindro neumatico de Bigger.webp'),
(34, 'Taladradora giratoria - Eje rojo', 'A', 'ATACANTE', 'Después de usar la técnica especial EX o una técnica en cadena, aumenta el daño eléctrico de los ataques normales y los ataques rápidos en un 50 / 57.5 / 65 / 72.5 / 80 % durante 10 s. Este efecto puede activarse una vez cada 15 s.', 'Recuperación de Energía: 50%', '624', '/uploads/Taladradora giratoria - Eje rojo.webp'),
(35, 'Réplica de motor estelar', 'A', 'ATACANTE', 'Al golpear enemigos a más de 6 m de distancia con un ataque normal o un ataque rápido, aumenta el daño físico infligido por el portador sobre el objetivo en un 36 / 41 / 46.5 / 52 / 57.5 % durante 8 s.', 'Ataque: 25%', '624', '/uploads/Réplica de motor estelar.webp'),
(36, 'Amo de llaves', 'A', 'ATACANTE', 'Al estar fuera del campo de batalla, aumenta la Recuperación de Energía en 0.45 / 0.52 / 0.58 / 0.65 / 0.72 ptos. por segundo. Al golpear a un enemigo con una técnica especial EX, aumenta el daño físico del portador en un 3 / 3.5 / 4 / 4.4 / 4.8 % durante 1 s. Pueden acumularse hasta 15 cargas. La duración se reinicia con cada activación.', 'Ataque: 25%', '624', '/uploads/Amo de llaves.webp'),
(37, 'Cámara acorazada', 'A', 'APOYO', 'Al infligir daño etéreo mediante una técnica especial EX, una técnica en cadena o una técnica definitiva, aumenta el daño de todos los miembros del equipo sobre el objetivo en un 15 / 17.5 / 20 / 22 / 24 % y aumenta la Recuperación de Energía del portador en 0.5 / 0.58 / 0.65 / 0.72 / 0.8 ptos./s durante 2 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Recuperación de Energía: 50%', '624', '/uploads/Camara acorazada.webp'),
(38, 'Primavera termal', 'A', 'DEFENSIVO', 'Reduce el daño recibido en un 7.5 / 8.5 / 9.5 / 10.5 / 12 %. Al recibir un golpe, aumenta la Tasa de Energía del portador en un 10 / 11.5 / 13 / 14.5 / 16 % durante 12 s. Cuando el portador pase a estar inactivo, este efecto se transferirá al agente activo y se reiniciará la duración. Este efecto no se acumula con otros efectos del mismo nombre.', 'Ataque: 25%', '594', '/uploads/Primavera termal.webp'),
(39, 'Cesta conejera', 'A', 'DEFENSIVO', 'Aumentan los PV en un 8 / 9.2 / 10.4 / 11.6 / 12.8 %. Al llevar un escudo, aumenta el Ataque del portador en un 10 / 11.5 / 13 / 14.5 / 16 %.', 'Defensa: 40%', '594', '/uploads/Cesta conejera.webp'),
(40, 'Brillo labial electrizante', 'A', 'ANOMALO', 'Mientras haya enemigos afectados por Anomalía de Atributo en combate, aumenta el Ataque del portador en un 10 / 11.5 / 13 / 14.5 / 16 % y aumenta el daño infligido al objetivo en un 15 / 17.5 / 20 / 22.5 / 25 %.', 'Maestría de Anomalía: 75', '594', '/uploads/Brillo labial electrizante.webp'),
(41, 'Llanto mielgo', 'A', 'ANOMALO', 'Cuando cualquier miembro del equipo provoque una Anomalía de Atributo sobre el enemigo, el portador obtiene 1 carga de este efecto. Cada carga aumenta la Maestría de Anomalía del portador en 30 / 34 / 38 / 42 / 48 ptos. Pueden acumularse hasta 4 cargas. Cuando el enemigo se recupere del Aturdimiento o sea eliminado, el efecto desaparecerá. La duración de cada carga es independiente.', 'Ataque: 25%', '594', '/uploads/Llanto mielgo.webp'),
(42, 'Transmorfer original', 'A', 'DEFENSIVO', 'Aumentan los PV en un 8 / 9.2 / 10.4 / 11.6 / 12.8 %. Al recibir un golpe, aumenta el Impacto del portador en un 10 / 11.5 / 13 / 14.5 / 16 % durante 12 s.', 'PV: 25%', '594', '/uploads/Transmorfer original.webp'),
(43, 'Fósil preciado', 'A', 'ATURDIDOR', 'Cuando los PV del objetivo sean iguales o superiores al 50 %, aumenta el Aturdimiento provocado por el portador en un 10 / 11.5 / 13 / 14.5 / 16 %. Cuando los PV del objetivo sean iguales o superiores al 75 %, aumenta esta bonificación en un 10 / 11.5 / 13 / 14.5 / 16 % adicional.', 'Impacto: 15%', '594', '/uploads/Fosil preciado.webp'),
(44, 'Última cena', 'A', 'ATURDIDOR', 'Por cada 10 ptos. de energía que el portador tenga, aumenta su Impacto en un 2 / 2.3 / 2.6 / 2.9 / 3.2 %. Pueden acumularse hasta 8 cargas. Al consumirlas todas, este efecto permanecerá durante 8 s. La duración de cada carga es independiente.', 'Recuperación de Energía: 50%', '594', '/uploads/Ultima cena.webp'),
(45, 'Motor estelar', 'A', 'ATACANTE', 'Al ejecutar un contraataque o un apoyo rápido, aumenta el Ataque del portador en un 12 / 13.8 / 15.6 / 17.4 / 19.2 % durante 12 s.', 'Ataque: 25%', '594', '/uploads/Motor estelar.webp'),
(46, 'Gastrónomo selvático', 'A', 'ANOMALO', 'Por cada 10 ptos. de energía consumidos, el portador obtendrá una carga de este efecto. Cada carga aumenta el Ataque del portador en un 2.5 / 2.8 / 3.2 / 3.6 / 4 % durante 10 s. Pueden acumularse hasta 10 cargas. La duración de cada carga es independiente.', 'Maestría de Anomalía: 75', '594', '/uploads/Gastronomo selvatico.webp'),
(47, 'Lapso de tiempo', 'A', 'APOYO', 'Cuando cualquier miembro del equipo ejecute un contraataque, una técnica especial EX, un ataque de apoyo o una técnica en cadena, obtienes 20/25/30/35 | 23/28.5/34.5/40 | 26/32/29/45 | 29/35.5/43.5/48 | 32/40/48/55 ptos. de dB respectivamente, y el portador recupera 0.7 / 0.8 / 0.9 / 1 / 1.1 ptos. de energía. Puede activarse una vez cada 12 s. El TdE para cada técnica es individual. Este efecto no se acumula con otros efectos del mismo nombre.', 'Tasa de Perforación: 20%', '594', '/uploads/Lapso de tiempo.webp'),
(48, 'Estrella callejera', 'A', 'ATACANTE', 'Cuando cualquier miembro del equipo ejecute una técnica en cadena, el portador adquiere 1 carga de este efecto. Pueden acumularse hasta 3 cargas. La próxima vez que ejecute una técnica definitiva, consumirá todas las cargas. Por cada carga consumida, aumenta el daño infligido por dicha técnica en un 15 / 17.2 / 19.5 / 21.7 / 24 %.', 'Ataque: 25%', '594', '/uploads/Estrella callejera.webp'),
(49, 'Batería de Demara (II)', 'A', 'ATURDIDOR', 'Aumenta el daño eléctrico en un 15 / 17.5 / 20 / 22 / 24 %. Al golpear a un enemigo por medio de un contraataque o un ataque de apoyo, aumenta la Tasa de Energía del portador en un 18 / 20.5 / 23 / 25 / 27.5 % durante 8 s.', 'Impacto: 15%', '624', '/uploads/Bateria de Demara (II).webp'),
(50, 'Falce escarchada', 'S', 'ANOMALO', 'Cuando el portador es un agente glacial y ejecuta la técnica especial o la técnica especial EX, su daño glacial aumenta en un 20 / 23 / 26 / 29 / 32% durante 40 s. Pueden acumularse hasta 2 cargas. Puede activarse un máximo de una vez por cada habilidad. La duración se reinicia con cada activación. Al poseer 2 cargas del efecto, el daño de floridez del portador aumenta en un 35 / 38.5 / 42 / 45.5 / 50 % adicional.', 'Tasa de anomalía: 30%', '713', '/uploads/Falce escarchada.webp'),
(51, 'Rastreador serpentino', 'S', 'ATACANTE', 'La Probabilidad de Crítico aumenta en un 25 / 28.8 / 32.5 / 36.3 / 40 %. Cuando el portador consume 20 ptos. de Energía de una sola vez, por cada 20 ptos. de Energía consumidos, obtiene una bonificación durante 3 s: al infligir daño eléctrico, ignora un 28 / 31.5 / 35 / 38.5 / 42 % de la Defensa del objetivo. Al activarse de nuevo, se extiende su duración hasta un máximo de 30 s. Al entrar en combate, obtiene esta bonificación durante 10 s. Cuando el portador no es el personaje activo, la duración no se reduce.', 'Recuperación de Energía: 60%', '713', '/uploads/Rastreador serpentino.webp'),
(52, 'Delusiones de neón', 'S', 'ATURDIDOR', 'La Maestría de Anomalía del portador aumenta en 90 / 103 / 117 / 130 / 145 ptos. Cuando el portador inflige daño etéreo con una técnica especial EX o un ataque normal, el daño infligido por todos los personajes del equipo aumenta en un 15 % / 17 % / 19.5 % / 21 % / 24 % durante 40 s. Pueden acumularse hasta 2 cargas. Puede activarse un máximo de una vez por cada habilidad. La duración se reinicia con cada activación. Cuando se tienen 2 cargas, la Maestría de Anomalía del portador aumenta adicionalmente en 60 / 69 / 78 / 87 / 96 ptos. Este efecto solo puede aplicarse una vez por todo el equipo.', 'Tasa de Anomalía: 30%', '713', '/uploads/Delusiones de neon.webp'),
(53, 'El ángel en la carcasa', 'S', 'ANOMALO', 'La Maestría de Anomalía del portador aumenta en 90 / 103 / 117 / 130 / 144 ptos. Cuando el portador es un personaje etéreo y pasa a ser el personaje en el campo de batalla o ejecuta una técnica especial o una técnica especial EX, obtiene una bonificación: el daño infligido a los enemigos afectados por una Anomalía de Atributo aumenta en un 20 / 23 / 26 / 29 / 32 %, y el daño de todas las Anomalías de Atributo que activa aumenta en un 10 / 11.5 / 13 / 14.5 / 16 %. Este efecto dura 15 s. La duración se reinicia con cada activación. Al pasar a ser un personaje en reserva, se elimina este efecto.', 'Tasa de Anomalía: 30%', '713', '/uploads/El angel en la carcasa.webp'),
(54, 'Pensamientos hechos canción', 'S', 'APOYO', 'Cuando el portador no es el personaje activo, su Recuperación de Energía aumenta en 0.6 / 0.69 / 0.78 / 0.87 / 0.96 ptos./s. Cuando el portador usa una técnica especial EX e inflige daño físico, otorga el siguiente efecto de bonificación a todos los personajes del equipo: el daño que infligen aumenta en un 12.5 / 14.3 / 16.1 / 17.9 / 20 %. Este efecto dura 40 s. Pueden acumularse hasta 2 cargas. La duración se reinicia con cada activación. Al tener 2 cargas, el Ataque de los personajes aumenta en un 10 / 11.5 / 13 / 14.5 / 16 % adicional. Este efecto solo puede aplicarse una vez por todo el equipo.', 'Recuperación de Energía: 60%', '713', '/uploads/Pensamientos hechos canción.webp'),
(55, 'Conejita semiazucarada', 'S', 'DEFENSIVO', 'La Recuperación de Energia del portador aumenta en 0.46 / 0.53 / 0.6 / 0.67 / 0.74 ptos./s. El Ataque de todos los personajes del equipo aumenta en un 10 / 11.5 / 13 / 14.5 / 16 % y los PV max. aumentan en un 10 / 11.5 / 13 / 14.5 / 16 %. Solo puede aplicarse una instancia de ese efecto para todo el equipo. Cuando el portador activa o extiende la duración de velo etéreo, el Daño Critico de todos los personajes del equipo aumenta en un 30 / 34.5 / 39 / 43.5 / 48 % durante 60 s. La duración se reinicia con cada activación.', 'PV: 30%', '713', '/uploads/Conejita semiazucarada.webp'),
(56, 'Esplendor surcanimbos', 'S', 'ATACANTE', 'El daño que inflige el portador ignora un 20 / 22 / 24 / 26 / 28 % de la resistencia fisica del objetivo. Cuando el portador activa velo etéreo, su daño aumenta en un 25 / 28.7 / 32 / 36.1 / 40 % y su Daño Critico aumenta en un 25 / 28.7 / 32 / 36.1 / 40 % durante 40 s. La duración se reinicia con cada activación.', 'Daño Critico: 48%', '743', '/uploads/Esplendor surcanimbos.webp'),
(57, 'Vajra iracundo', 'S', 'DISRUPTIVO', 'La Probabilidad de Crítico aumenta en un 20 / 23 / 26 / 29 / 32 %. Cuando el portador ejecuta la técnica especial EX, el daño bruto ígneo que inflige el portador aumenta en un 9 / 10.35 / 11.7 / 13.05 / 14.4 %. Pueden acumularse hasta 2 cargas durante 20 s. La duración de cada carga es independiente.', 'PV: 30%', '713', '/uploads/Vajra iracundo.webp'),
(58, 'Llamada del ayer', 'S', 'ATURDIDOR', 'Al estar inactivo, la Recuperación de Energía del portador aumenta en 1.5 / 1.7 / 1.9 / 2.1 / 2.3 s. Cuando el portador ejecuta la técnica especial EX e inflige daño físico, el Aturdimiento infligido por los ataques del portador aumenta en un 9 / 10.3 / 11.7 / 13 / 14.5 %. Pueden acumularse hasta 3 cargas durante 10 s. Al acumular 3 cargas, el Daño Crítico de todos los personajes del equipo aumenta adicionalmente en un 30 / 34.5 / 39 / 43.5 / 48 % durante 40 s. La duración se reinicia con cada activación. El efecto de aumento del Daño Crítico solo puede activarse una vez por todo el equipo.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Llamada del ayer.webp'),
(59, 'Cuna del kraken', 'S', 'DISRUPTIVO', 'Cuando los PV del portador disminuyen, el daño bruto glacial infligido aumenta en un 6 / 7 / 8 / 9 / 10 % durante 25 s. Pueden acumularse hasta 3 cargas. La duración de cada carga es independiente. Puede activarse un máximo de una vez cada 0.5 s. Cuando los PV del portador se reducen al 50 % de sus PV máx. o menos, la Probabilidad de Crítico aumenta en un 20 / 23 / 26 / 29 / 32 %.', 'PV: 30%', '713', '/uploads/Cuna del kraken.webp'),
(60, 'Hogar de ensueño', 'S', 'APOYO', 'La Recuperación de Energía del portador aumenta en 0,4 / 0,46 / 0,52 / 0,58 / 0,64 ptos./s. Cuando el portador activa o prolonga la duración de velo etéreo, el daño infligido por todos los personajes del equipo aumenta en un 25 / 28,8 / 32,5 / 35,3 / 40 % y los PV máx. aumentan en un 15 / 17,3 / 19,5 / 21,8 / 24 % durante 45 s. La duración se reinicia con cada activación. Este efecto solo puede aplicarse una vez por todo el equipo.', 'PV: 30%', '713', '/uploads/Hogar de ensueño.webp'),
(61, 'Fogonazo belicoso', 'S', 'ATACANTE', 'La Probabilidad de Crítico aumenta en un 20 / 22 / 26 / 29 / 32 %. Cuando el portador inflige daño ígneo mediante una réplica, sus ataques ignoran un 15 / 17.2 / 19.5 / 21.7 / 24 % de la Defensa del enemigo durante 8 s. Este efecto puede activarse un máximo de una vez cada 3 s. Pueden acumularse hasta 2 cargas. La duración se reinicia con cada activación.', 'Recuperación de Energía: 60%', '713', '/uploads/Fogonazo belicoso.webp'),
(62, 'Cordis germina', 'S', 'ATACANTE', 'La Probabilidad de Crítico aumenta en un 15 / 17 / 19 / 21 / 23 %. Cuando el portador inflige daño con un ataque normal o una técnica especial EX, puede obtener por separado 1 carga de bonificación. Cada carga de bonificación hace que el daño eléctrico infligido por el portador aumente en un 12.5 / 14.5 / 16.5 / 18.5 / 20 % durante 40 s. Pueden acumularse hasta 2 cargas. La duración de cada carga es independiente. Puede activarse un máximo de una vez por cada habilidad. Al contar con 2 cargas, el daño que inflige el portador con el ataque normal y la técnica definitiva ignora un 20 / 23 / 26 / 29 / 32 % de la Defensa del enemigo.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Cordis germina.webp'),
(63, 'Excelencia disciplinada', 'S', 'ANOMALO', 'La Tasa de Anomalía del portador aumenta en 60 / 69 / 78 / 87 / 96 ptos. Al activar embestida, el daño físico que inflige el portador aumenta en un 20 / 23 / 26 / 29 / 32 % durante 20s. Pueden acumularse hasta 2 cargas. La duración se reinicia con cada activación. Al entrar en combate, el portador obtiene inmediatamente 2 cargas del efecto.', 'Ataque: 30%', '713', '/uploads/Excelencia disciplinada.webp'),
(64, 'Metanukimorfosis', 'S', 'APOYO', 'Cuando el portador inflige daño físico con la técnica especial EX o la técnica definitiva, su Tasa de Anomalía aumenta en 30 / 34 / 39 / 43 / 48 ptos. durante 40s. Cuando el portador golpea a un enemigo con una réplica, la Maestría de Anomalía de todos los personajes del equipo aumenta en 60 / 69 / 78 / 87 / 96 ptos. durante 40s. Este efecto solo puede aplicarse una vez por todo el equipo.', 'Recuperación de Energía: 60%', '713', '/uploads/Metanukimorfosis.webp'),
(65, 'Rugiente urna de la fortuna', 'S', 'ATURDIDOR', 'El Aturdimiento provocado por la técnica especial EX, la técnica en cadena y la técnica definitiva del portador aumenta en un 28 / 32.2 / 36.4 / 40.6 / 44.8%. Al ejecutar la técnica en cadena o la técnica definitiva e infligir daño ígneo, el daño infligido por todos los personajes del equipo aumenta en un 10 / 11.5 / 13 / 14.5 / 16% durante 30s. Pueden acumularse hasta 2 cargas. La duración de cada carga es independiente. Puede activarse un máximo de una vez por cada habilidad. Este efecto solo puede aplicarse una vez por todo el equipo.', 'Ataque: 30%', '713', '/uploads/Rugiente urna de la fortuna.webp'),
(66, 'Nidal Qingming', 'S', 'DISRUPTIVO', 'La Probabilidad de Crítico aumenta en un 20 / 23 / 26 / 29 / 32%. Cuando el portador ejecuta una técnica especial EX, obtiene 1 carga del efecto de acompañante Qingming durante 15s. Pueden acumularse hasta 2 cargas. Al entrar en combate, obtiene directamente 2 cargas. La duración se reinicia con cada activación. Con cada carga del efecto de acompañante Qingming, el daño etéreo del portador aumenta en un 8 / 9.2 / 10.4 / 11.6 / 12.8% y el daño bruto etéreo de la técnica definitiva o la técnica especial EX aumenta en un 10 / 11.5 / 13 / 14.5 / 16%.', 'PV: 30%', '743', '/uploads/Nidal Qingming.webp'),
(67, 'Miríada de eclipses', 'S', 'ATACANTE', 'El Daño Crítico aumenta en un 45 / 51.75 / 58.5 / 65.25 / 72%. Al infligir daño glacial con la técnica especial EX, la técnica en cadena o la técnica definitiva, el personaje obtiene el efecto de declaración de sentencia de grado cero durante 3s. Durante el efecto de declaración de sentencia de grado cero, cuando el personaje golpea a un enemigo, ignora un 25 / 28.75 / 32.5 / 36.25 / 40% de su Defensa.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Miríada de eclipses.webp'),
(68, 'Revoloteo ensoñador', 'S', 'ANOMALO', 'La tasa de acumulación de Anomalía de Atributo aumenta en un 40 / 46 / 52 / 58 / 64%. Cuando el portador inflige daño etéreo, su Maestría de Anomalía aumenta en 20 / 23 / 26 / 29 / 32 ptos. durante 5s. Pueden acumularse hasta cargas. Puede activarse un máximo de una vez cada 0.5s. La duración se reinicia con cada activación.', 'Maestría de Anomalía: 90', '713', '/uploads/Revoloteo ensoñador.webp'),
(69, 'Visión espectral', 'S', 'ATURDIDOR', 'Cuando el portador golpea a un enemigo con una réplica e inflige daño eléctrico, la Defensa del objetivo se reduce en un 25 / 28.75 / 32.5 / 36.25 / 40 % durante 5 s. Los efectos pasivos con el mismo nombre no se pueden acumular. Cuando se activa este efecto, si el portador no es el agente activo, obtiene 1 carga de oclusión espiritual. Pueden acumularse hasta 3 cargas. Puede activarse un máximo de una vez por cada habilidad. Por cada carga de oclusión espiritual, el Impacto del portador aumenta en un 4 / 4.6 / 5.2 / 5.8 / 6.4 % durante 12 s. La duración de cada carga es independiente. Cuando se alcanza el número máximo de cargas de oclusión espiritual, el Impacto del portador aumenta en un 8 / 9.2 / 10.4 / 11.6 / 12.8 % adicional.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Vision espectral.webp'),
(70, 'Inocencia sacrificada', 'S', 'ATACANTE', 'El Daño Crítico aumenta en un 30 / 34.5 / 39 / 43.5 / 48 %. Cuando el portador golpea a un enemigo con un ataque normal, una técnica especial o una réplica, puede obtener por separado 1 carga de bonificación. Cada carga de bonificación hace que el Daño Crítico del portador aumente en un 10 / 11.5 / 13 / 14.5 / 16 % adicional durante 30 s. Pueden acumularse hasta 3 cargas. La duración de cada carga es independiente. Puede activarse un máximo de una vez por cada habilidad. Al contar con 3 cargas, el daño eléctrico del portador aumenta en un 20 / 23 / 26 / 29 / 32 %.', 'Daño Crítico: 48%', '713', '/uploads/Inocencia sacrificada.webp'),
(71, 'Acordes del corazón nocturno', 'S', 'ATACANTE', 'El Daño Crítico aumenta en un 50 / 57.5 / 65 / 72.5 / 80%. Cuando el portador entra en combate o ejecuta una técnica en cadena o una técnica definitiva, obtiene 1 carga de acorde del corazón. Por cada carga de acorde del corazón, la técnica en cadena y la técnica definitiva del portador ignoran un 12.5 / 14.5 / 16.5 / 18.5 / 20% de la resistencia ígnea del objetivo durante 30s. Pueden acumularse hasta 2 cargas. La duración se reinicia con cada activación.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Acordes del corazon nocturno.webp'),
(72, 'Envanecimiento primoroso', 'S', 'APOYO', 'Cuando cualquier miembro del equipo entra en combate por medio de un apoyo rápido, una técnica en cadena, un apoyo defensivo o un apoyo evasivo, el portador recupera 5 / 5.5 / 6 / 6.5 / 7 ptos. de energía. Puede activarse una vez cada 5 s. Cuando el portador consume 20 ptos. o más de energía, el daño que infligen todos los miembros del equipo aumenta en un 10 / 11.5 / 13 / 14.5 / 16 % durante 20 s. Pueden acumularse hasta 2 cargas. La duración se reinicia con cada activación. Este efecto solo puede aplicarse una vez por todos los miembros del equipo.', 'Ataque: 30%', '713', '/uploads/Envanecimiento primoroso.webp'),
(73, 'Dispensador de fármacos zanshin', 'S', 'ATACANTE', 'La Probabilidad de Crítico aumenta en un 10 / 11.5 / 13 / 14.5 / 16 %. El daño eléctrico infligido por el ataque rápido aumenta en un 40 / 46 / 52 / 58 / 64 %. Cuando cualquier miembro del equipo provoca Anomalía de Atributo o Aturdimiento sobre el enemigo, la Probabilidad de Crítico del portador aumenta en un 10 / 11.5 / 13 / 14.5 / 16 % adicional durante 15 s.', 'Daño Crítico: 48%', '713', '/uploads/Dispensador de farmacos zanshin.webp'),
(74, 'Templo a la granizada estelífera', 'S', 'ANOMALO', 'El Daño Crítico aumenta en un 50 / 57 / 65 / 72 / 80 %. Al ejecutar una técnica especial EX o cuando cualquier miembro del equipo provoca Anomalía de Atributo sobre un enemigo, el daño glacial del portador aumenta en un 20 / 23 / 26 / 29 / 32 % durante 15 s. Pueden acumularse hasta 2 cargas. La duración de cada carga es independiente.', 'Probabilidad de Crítico: 24%', '743', '/uploads/Templo a la granizada estelifera.webp'),
(75, 'Láurea ardiente', 'S', 'ATURDIDOR', 'Al ejecutar un apoyo rápido o un apoyo perfecto, el Impacto del portador aumenta en un 25 / 28.75 / 32.5 / 36.25 / 40 % durante 8 s. Cuando el portador golpea al enemigo con un ataque normal, le aplica al objetivo una carga de decadencia durante 30 s. Pueden acumularse hasta 20 cargas. La duración se reinicia con cada activación. Cuando cualquier miembro del equipo golpea al enemigo, por cada carga de decadencia que tenga el objetivo, el Daño Crítico del daño glacial y el daño ígneo infligido por ese ataque aumenta en un 1.5 / 1.72 / 1.95 / 2.17 / 2.4 %. Este efecto solo puede aplicarse una vez por todos los miembros del equipo.', 'Impacto: 18%', '713', '/uploads/Laurea ardiente.webp'),
(76, 'Urdidor del tiempo', 'S', 'ANOMALO', 'La tasa de acumulación de Anomalía eléctrica del portador aumenta en un 30 / 35 / 40 / 45 / 50 %. Al golpear a un enemigo afectado por Anomalía de Atributo con una técnica especial o una técnica especial EX, la Maestría de Anomalía del portador aumenta en 75 / 85 / 95 / 105 / 115 ptos. durante 15 s. Cuando la Maestría de Anomalía del portador es igual o superior a 375 ptos., el daño de disfunción que inflige el portador aumenta en un 25 / 27.5 / 30 / 32.5 / 35 %.', 'Ataque: 30%', '713', '/uploads/Urdidor del tiempo.webp'),
(77, 'Coctelera incandescente', 'S', 'ANOMALO', 'Al estar inactivo, la Recuperación de Energía del portador aumenta en 0.6 / 0.75 / 0.9 / 1.05 / 1.2 ptos./s. Al golpear a un enemigo con la técnica especial EX o el ataque de apoyo, el daño infligido por el portador aumenta en un 3.5 / 4.4 / 5.2 / 6.1 / 7 % durante 6 s. Pueden acumularse hasta 10 cargas. Puede activarse una vez cada 0.3 s. Al estar inactivo, la tasa de acumulación se duplica. La duración se reinicia con cada activación. Al obtener el efecto de aumento de daño, si el número de cargas acumuladas es mayor o igual a 5, la Maestría de Anomalía del portador aumenta en 50 / 62 / 75 / 87 / 100 ptos. adicionales durante 6 s. El efecto de aumento de la Maestría de Anomalía no se acumula.', 'Ataque: 30%', '713', '/uploads/Coctelera incandescente.webp'),
(78, 'Colmillos furibundos', 'S', 'DEFENSIVO', 'El valor del escudo que otorga el portador aumenta en un 30 / 38 / 46 / 52 / 60 %. Cuando cualquier miembro del equipo provoca una interrupción o ejecuta una evasión perfecta, el daño que infligen y el Aturdimiento que provocan todos los miembros del equipo aumentan en un 18 / 22.5 / 27 / 31.5 / 36 % y un 12 / 15 / 18 / 21 / 24 % respectivamente durante 20 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Impacto: 18%', '713', '/uploads/Colmillos furibundos.webp'),
(79, 'Aguijón agudo', 'S', 'ANOMALO', 'Al ejecutar un ataque rápido, obtienes 1 carga de instinto cazador. Por cada carga de instinto cazador, el daño físico del portador aumenta en un 12 / 15 / 18 / 21 / 24 % durante 10 s. Pueden acumularse hasta 3 cargas. Puede activarse una vez cada 0.5 s. La duración se reinicia con cada activación. Al entrar en combate o al ejecutar una evasión perfecta, el portador obtiene 3 cargas de instinto cazador de inmediato. Cuando las cargas de instinto cazador alcanzan el máximo, la acumulación de Anomalía de Atributo del portador aumenta en un 40 / 50 / 60 / 70 / 80 %.', 'Maestría de Anomalía: 90', '713', '/uploads/Aguijon agudo.webp'),
(80, 'Tetera esmeraldina', 'S', 'ATURDIDOR', 'Al golpear a un enemigo con un ataque normal, obtienes 1 carga de impresionan-té. Por cada carga de impresionan-té, el Impacto del portador aumenta en un 0.7 / 0.88 / 1.05 / 1.22 / 1.4 % durante 8 s. Pueden acumularse hasta 30 cargas. La duración de cada carga es independiente. Al obtener cargas de impresionan-té, si el portador tiene 15 o más cargas de impresionan-té, el daño infligido por todos los miembros del equipo aumenta en un 20 / 23 / 26 / 29 / 32 % durante 10 s. Este efecto no se acumula con otros efectos del mismo nombre.', 'Impacto: 18%', '713', '/uploads/Tetera esmeraldina.webp'),
(81, 'Antidisturbios (VI)', 'S', 'ATACANTE', 'Aumenta la Probabilidad de Crítico en un 15 / 18.8 / 22.6 / 26.4 / 30 %. Al ejecutar una técnica especial EX, el portador obtiene 8 cargas de este efecto. Pueden acumularse hasta 8 cargas. Al inflingir daño etéreo por medio de un ataque normal, consumirá 1 carga, la cual aumenta el daño inflingido por dicha habilidad en un 35 / 43.5 / 52 / 60.5 / 70 %.', 'Daño Crítico: 48%', '713', '/uploads/Antidisturbios (VI).webp'),
(82, 'Cuna plañidera', 'S', 'APOYO', 'Al estar inactivo, la Recuperación de Energía del portador aumenta en 0.6 / 0.76 / 0.9 / 1.05 / 1.2 ptos. Cuando el portador golpea al enemigo, el daño que infligen todos los miembros del equipo al objetivo aumenta en un 10 / 12.5 / 15 / 17.5 / 20 % durante 3 s. Mientras dure el efecto, este aumenta en un 1.7 / 2 / 2.5 / 3 / 3.3 % cada 0.5 s hasta un máximo de un 10.2 / 12.5 / 15 / 17.5 / 20 %. Al volver a activar este efecto, solo se reiniciará su duración, pero no reiniciará el efecto de aumento de daño. Este efecto no se acumula con otros efectos del mismo nombre.', 'Tasa de perforación: 24%', '684', '/uploads/Cuna plañidera.webp'),
(83, 'Visitante de altamar', 'S', 'ATACANTE', 'Aumenta el daño glacial en un 25 / 31.5 / 38 / 44.5 / 50 %. Al golpear a un enemigo por medio de un ataque normal, aumenta la Probabilidad de Crítico del portador en un 10 / 12.5 / 15 / 17.5 / 20 % durante 8 s. Al infligir daño glacial por medio de un ataque rápido, aumenta la Probabilidad de Crítico del portador en un 10 / 12.5 / 15 / 17.5 / 20 % adicional durante 15 s. La duración de cada bonificación es independiente.', 'Probabilidad de Crítico: 24%', '713', '/uploads/Visitante de altamar.webp'),
(84, 'Compilador quimérico', 'S', 'ANOMALO', 'Aumenta el Ataque en un 12 / 15 / 18 / 21 / 24 %. Al ejecutar una técnica especial o una técnica especial EX, aumenta la Maestría de Anomalía del portador en 25 / 31 / 37 / 43 / 50 ptos. durante 8 s. Pueden acumularse hasta 3 cargas. La duración de cada carga es independiente.', 'Tasa de Perforación: 24%', '684', '/uploads/Compilador quimerico.webp'),
(85, 'El sometido', 'S', 'ATURDIDOR', 'Al golpear al enemigo, aumenta el Aturdimiento provocado por medio del ataque normal en un 6 / 7.5 / 9 / 10.5 / 12 % durante 8 s. Pueden acumularse hasta 5 cargas. Puede activarse como mucho una vez con cada habilidad. La duración de cada carga es independiente.', 'Impacto: 18%', '684', '/uploads/El sometido.webp'),
(86, 'Engranaje infernal', 'S', 'ATURDIDOR', 'Al encontrarse inactivo, aumenta la Recuperación de Energía del portador en 0.6 / 0.75 / 0.9 / 1.05 / 1.2 ptos. Al ejecutar una técnica especial EX, aumenta el Impacto del portador en un 10 / 12.5 / 15 / 17.5 / 20 % durante 10 s. Pueden acumularse hasta 2 cargas. La duración de cada carga es independiente.', 'Impacto: 18%', '684', '/uploads/Engranaje infernal.webp'),
(87, 'Petrazufre', 'S', 'ATACANTE', 'Al golpear a un enemigo por medio de un ataque normal, un ataque rápido o un contraataque, aumenta el Ataque del portador en un 3.5 / 4.4 / 5.2 / 6 / 7 % durante 8 s. Pueden acumularse hasta 8 cargas. Puede activarse una vez cada 0.5 s. La duración de cada carga es independiente.', 'Ataque: 30%', '684', '/uploads/Petrazufre.webp'),
(88, 'Almohadillas férreas', 'S', 'ATACANTE', 'Aumenta el daño físico en un 20 / 25 / 30 / 35 / 40 %. Al golpear a un enemigo por la espalda, aumenta el daño infligido por el portador en un 25 / 31.5 / 38 / 44 / 50 %.', 'Probabilidad de Crítico: 24%', 684, '/uploads/Almohadillas ferreas.webp');

-- =========================================================================
-- 4. AGENTES (17 Personajes del Roster Base y 1.0)
-- =========================================================================
INSERT INTO agentes (nombre, rango, elemento, rol, descripcion, imagen_url, estadisticas_lvl60, habilidades, mindscapes, w_engine_recomendado_id, disco_4pc_id, disco_2pc_id) VALUES
(
  -- 1. Nombre del Agente
  'Promeia', 
  -- 2. Rango ('S' o 'A')
  'S', 
  -- 3. Elemento ('FUEGO', 'HIELO', 'ELECTRICO', 'FISICO', 'ETER')
  'HIELO', 
  -- 4. Rol / Especialidad ('ATACANTE', 'ATURDIDOR', 'ANOMALO', 'APOYO', 'DEFENSIVO')
  'ANOMALO', 
  -- 5. Descripcion / Lore
  '«Llevo mucho tiempo preparada para chocar y arder»
«¡No, no, ni hablar! Ella es un iceberg con el que no conviene meterse. Si no huimos ahora mismo, estaremos en serios problemas ... ¡Oye! ¡Detente! ¡Mi vida es muy valiosa!»
—Cissia
«Un secreto: quizás no sea como te imaginas ... Ay, casi se me escapa. Esta información no es gratuita, ¿eh?»
—Zhao
«Señorita, ¿quiere un té con leche? ¿Eh? P-perdón, no me di cuenta de que sus m-manos...»
—Coco, que estaba promocionando la bebida estrella de forma rutinaria, se apresura a dar una explicación
«¡Desátalas! Muéstrales a todos tus colmillos, tu verdadera naturaleza ... mi "vieja amistad".»
—Palabras pronunciadas por unos colmillos afilados bajo una máscara de hierro en la Cavidad, seguidas de una risa fría y arrogante', 
  -- 6. URL de la imagen
  '/uploads/Promeia.webp',
  -- 7. Estadisticas Base Nvl 60 (Formato JSONB)
  '{"PV": 7788, "Ataque": 798, "Defensa": 612, "Impacto": 86, "Probabilidad de Crítico": 5, "Daño Crítico": 50, "Tasa de anomalía": 112, "Maestría de anomalía": 114, "Tasa de Perforación": 0, "Recuperación de Energía": 1.2}'::jsonb,
  -- 8. Habilidades (Formato JSONB)
  '{
  "ataque_basico": [
    {
      "nombre": "Ataque normal: Filo transversal",
      "descripcion": "Pulsa ATAQUE BASICO para usarlo.\nEjecuta hasta cinco movimientos de ataque hacia delante, lo que inflige daño glacial.\nEl quinto movimiento es un ataque en picado. Tras aterrizar y al tener suficiente juicio por frialdad, mantén pulsado ATAQUE ESPECIAL o ATAQUE BASICO para enlazar la técnica especial EX: Ejecución - Juicio inmisericorde.\nTras lanzar la capa durante el cuarto movimiento, entra en el estado de absolución encadenada."
    },
    {
      "nombre": "Ataque normal: Cuchilla giratoria",
      "descripcion": "Mantén pulsado ATAQUE BASICO para usarlo.\nPromeia salta hacia arriba y ejecuta un ataque mientras lanza su capa junto al enemigo para entrar en el estado de absolución encadenada, lo que inflige daño glacial.\nAl golpear al enemigo, no acumula frio corrosivo."
    },
    {
      "nombre": "Absolución encadenada",
      "descripcion": "Al ejecutar ciertas habilidades, Promeia lanza su capa para cortar continuamente a los enemigos, lo que inflige daño glacial.\nAl golpear al enemigo, no acumula frio corrosivo.\nMientras la capa permanece desprendida, Promeia puede caminar lentamente.\nDurante este tiempo, pulsa ATAQUE BASICO para enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nSi Promeia recibe un ataque mientras la capa permanece desprendida, puede ejecutar automáticamente una evasión perfecta. El efecto de evasión puede activarse un máximo de una vez cada 20 s."
    }
  ],
  "evasion": [
    {
      "nombre": "Evasión: Paso velado",
      "descripcion": "Pulsa ESQUIVA para usarla.\nEjecuta un rápido esprint evasivo.\nDurante la ejecucion de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Ataque rápido: Siego funesta",
      "descripcion": "Pulsa ATAQUE BASICO durante una evasión para usarlo.\nEjecuta un ataque rápido hacia delante, lo que inflige daño glacial."
    },
    {
      "nombre": "Contraataque: Salto de murciélago",
      "descripcion": "Pulsa ATAQUE BASICO después de una evasión perfecta para usarlo.\nEjecuta ataques consecutivos contra el objetivo, lo que inflige daño glacial.\nTras la ejecución de la habilidad, se puede enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nDurante la ejecucion de la habilidad, la agente se vuelve invulnerable."
    }
  ],
  "asistencia": [
    {
      "nombre": "Apoyo rápido: Rotura subitánea",
      "descripcion": "Pulsa CAMBIO DE PERSONAJE para usarlo cuando el personaje activo sea lanzado por los aires.\nEjecuta ataques consecutivos contra el objetivo, lo que inflige daño glacial.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Apoyo defensivo: Requerimiento",
      "descripcion": "Pulsa CAMBIO DE PERSONAJE para usarlo cuando el personaje en el campo de batalla esté a punto de recibir un golpe.\nBloquea el ataque enemigo, lo que provoca una gran cantidad de Aturdimiento.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Ataque sucesivo: Interceptación",
      "descripcion": "Pulsa ATAQUE BASICO después de un apoyo defensivo para usarlo.\nEjecuta ataques consecutivos contra el objetivo, lo que inflige daño glacial.\nTras la ejecución de la habilidad, se puede enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    }
  ],
  "tecnica_especial": [
    {
      "nombre": "Técnica especial: Ejecución - Destello gélido",
      "descripcion": "Pulsa ATAQUE ESPECIAL para usarla.\nEjecuta un ataque con cuchillas voladoras, lo que inflige daño glacial."
    },
    {
      "nombre": "Técnica especial EX: Ejecución - Sofocación álgida",
      "descripcion": "Al contar con Energía suficiente, pulsa ATAQUE ESPECIAL para usarla.\nEjecuta un ataque con cuchillas voladoras y lanza su capa junto al enemigo para entrar en el estado de absolución encadenada, lo que inflige daño glacial.\nSi recibe un ataque enemigo poco después de ejecutar la habilidad, enlaza automáticamente la técnica especial EX: Ejecución - Sudario sombrío.\nAl ejecutar la habilidad, Promeia obtiene el efecto de ley de hierro.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Técnica especial EX: Ejecución - Sudario sombrío",
      "descripcion": "Se ejecuta automáticamente al recibir un ataque poco después de ejecutar la técnica especial EX: Ejecución - Sofocación álgida.\nActiva visión extrema durante un breve periodo de tiempo y se desplaza rápidamente hasta colocarse detrás del enemigo.\nTras activar una evasión perfecta, al tener Energía suficiente, pulsa ATAQUE ESPECIAL para consumir 40 ptos. de Energía, ejecutar la técnica especial EX: Ejecución - Sudario sombrio y obtener el efecto de ley de hierro.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Técnica especial: Ejecución - Caída de escarcha",
      "descripcion": "Al tener el efecto de ley de hierro, pulsa ATAQUE BASICO o ATAQUE ESPECIAL en el estado de absolución encadenada para usarla.\nSalta hacia el enemigo y, mientras recupera la capa, ejecuta un ataque en picado, lo que inflige daño glacial.\nTras aterrizar y al tener juicio por frialdad, manten pulsado ATAQUE BASICO , ATAQUE ESPECIAL para enlazar la técnica especial EX: Ejecución - Juicio inmisericorde.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Técnica especial: Ejecución - Escarcha estratificada",
      "descripcion": "Al ejecutar la técnica especial EX: Ejecución - Sudario sombrio, pulsa ATAQUE BASICO o ATAQUE ESPECIAL para usarla.\nEjecuta rápidamente varios movimientos de ataque, luego salta hacia el enemigo y, mientras recupera la capa, ejecuta un ataque en picado más poderoso, lo que inflige daño glacial.\nTras aterrizar y al tener juicio por frialdad, manten pulsado ATAQUE BASICO , ATAQUE ESPECIAL para enlazar la técnica especial EX: Ejecución - Juicio inmisericorde.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Técnica especial EX: Ejecución - Juicio inmisericorde",
      "descripcion": "Al tener suficiente juicio por frialdad, tras ejecutar el último movimiento del ataque normal: Filo transversal, la técnica especial: Ejecución - Caída de escarcha o la técnica especial: Ejecución - Escarcha estratificada, manten pulsado ATAQUE BASICO , ATAQUE ESPECIAL tras aterrizar en el suelo para usarla.\nEjecuta un rápido salto evasivo hacia atrás al mismo tiempo que ejecuta un ataque final más poderoso, lo que inflige daño glacial.\nAl golpear a un enemigo, no acumula frio corrosivo.\nTras la ejecución de la habilidad, mantén pulsado ATAQUE BASICO , ATAQUE ESPECIAL o pulsa ATAQUE BASICO para enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    }
  ],
  "tecnica_cadena": [
    {
      "nombre": "Técnica en cadena: Ajuste de cuentas a la inversa",
      "descripcion": "Elige el avatar de personaje correspondiente al activar una técnica en cadena para usarla.\nLanza las cuchillas voladoras y se cuelga boca abajo sobre el enemigo para ejecutar varios movimientos de ataque, seguidos de un ataque final, lo que inflige una gran cantidad de daño glacial.\nAl golpear a un enemigo afectado por Anomalia glacial, Anomalia etérea, Anomalía eléctrica, Anomalía ignea, Anomalía física o Anomalia aérea con el ataque pesado, activa 1 instancia del efecto de floridez, lo que inflige un 100 % de daño de Anomalia de Atributo del atributo correspondiente.\nTras la ejecución de la habilidad, se puede enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    },
    {
      "nombre": "Técnica definitiva: Empalamiento glacial",
      "descripcion": "Cuando los dB llegan a su nivel máximo, pulsa HABILIDAD DEFINITIVA para usarla.\nEjecuta varios movimientos de ataque hacia delante, lo que inflige una gran cantidad de daño glacial.\nAl golpear a un enemigo afectado por Anomalia glacial, Anomalia etérea, Anomalía eléctrica, Anomalía ignea, Anomalía física o Anomalia aérea con el ataque pesado, activa 1 instancia del efecto de floridez, lo que inflige un 250 % de dano de Anomalia de Atributo del atributo correspondiente.\nTras la ejecución de la habilidad, se puede enlazar directamente el quinto movimiento del ataque normal: Filo transversal.\nDurante la ejecución de la habilidad, la agente se vuelve invulnerable."
    }
  ],
  "habilidad_core": [
    {
      "nombre": "Técnica pasiva: Robo del fuego",
      "descripcion": "Si la Tasa de Anomalía inicial de Promeia es superior a 150 ptos., por cada pto. adicional de la Tasa de Anomalía inicial, su Maestría de Anomalía aumenta en 1.5 ptos. y el daño de floridez infligido por todo el equipo aumenta en un 0.35 %.\nCuando Promeia golpea al enemigo con diversos ataques, recupera cierta cantidad de frío corrosivo. Cuando cualquier personaje del equipo activa congelación, disfunción, si se provoca turbulencia al enemigo o cuando Promeia ejecuta la técnica especial EX: Ejecución - Sudario sombrío, recupera 5 / 5 / 5 / 10 ptos. de frío corrosivo adicionales.\nSe pueden acumular hasta un máximo de 100 ptos. de frío corrosivo.\nCuando un compañero de equipo activa y golpea al enemigo con floridez, Promeia recupera 15 ptos. de frío corrosivo adicionales. Si tiene 50 ptos. o más de frío corrosivo, consume 50 ptos. de frío corrosivo y los convierte en 1 pto. de juicio por frialdad.\nSe puede obtener hasta un máximo de 2 ptos. de juicio por frialdad.\nAl entrar en combate, Promeia obtiene 2 ptos. de juicio por frialdad. Al golpear a un enemigo afectado por Anomalía glacial, Anomalía etérea, Anomalía eléctrica, Anomalía ígnea, Anomalía física o Anomalía aérea con el ataque final de la técnica especial EX: Ejecución - Juicio inmisericorde, activa 1 instancia de floridez, lo que inflige un 330 / 385 / 435 / 485 / 535 / 585 / 635 % de daño de Anomalía de Atributo del atributo correspondiente.\nAl ejecutar la habilidad, consume 1 pto. de juicio por frialdad.\nCuando Promeia activa y golpea a un enemigo con floridez, recupera 100 dB adicionales. Puede activarse un máximo de una vez cada 0.5 s. Al ejecutar la técnica definitiva: Empalamiento glacial, obtiene juramento algente. Cuando tiene juramento algente, tras ejecutar la técnica especial EX: Ejecución - Juicio inmisericorde, la técnica en cadena: Ajuste de cuentas a la inversa o la técnica definitiva: Empalamiento glacial, pulsa o mantén pulsado ATAQUE ESPECIAL para consumir juramento algente y enlazar directamente la técnica especial: Ejecución - Escarcha estratificada. Puede acumularse hasta un máximo de 1 carga del efecto de juramento algente."
    },
    {
      "nombre": "Técnica adicional: Como un trago de agua fría",
      "descripcion": "Si en el equipo hay otro personaje anómalo o auxiliar:\nAl ejecutar una técnica especial EX, la tasa de acumulación de Anomalía glacial de Promeia aumenta en un 30 % durante 30 s. La duración se reinicia con cada activación.\nCuando cualquier personaje del equipo provoca bruma helada sobre un enemigo, la duración de dicho efecto aumenta en 3 s.\nCuando Promeia golpea a un enemigo con una técnica especial EX, este entra en el estado de presunción de culpabilidad.\nCuando cualquier personaje del equipo activa floridez sobre un enemigo en el estado de presunción de culpabilidad, ignoran un 40 % de su Defensa.\nEl estado de presunción de culpabilidad dura 30 s. La duración se reinicia con cada activación."
    }
  ]
}'::jsonb,
  -- 9. Talentos / Mindscapes (Formato JSONB)
  '{
  "1. Idealismo inocente": "Cuando Promeia ejecuta la técnica definitiva: Empalamiento glacial, obtiene un efecto adicional: si juicio por frialdad no está al máximo, obtiene 1 pto. de juicio por frialdad.\nEste efecto puede activarse una vez tras ejecutar la técnica definitiva: Empalamiento glacial.\nCuando cualquier personaje del equipo provoca floridez sobre un enemigo afectado por el estado de presunción de culpabilidad, ignora un 20 % adicional de la Defensa.",
  "2. Convicción vacilante": "La Maestría de Anomalía de Promeia aumenta en 40 ptos.\nEl multiplicador de floridez activado al consumir juicio por frialdad aumenta en un 120 %.",
  "3. Cruel luz de luna": "Nivel de ataque normal, evasión, técnica de apoyo, técnica especial y técnica en cadena +2.",
  "4. Acusación implacable": "Cuando Promeia activa el efecto de floridez, recupera 5 ptos. de frío corrosivo. Puede activarse un máximo de una vez cada 0.5s.",
  "5. La polilla moribunda": "Nivel de ataque normal, evasión, técnica de apoyo, técnica especial y técnica en cadena +2.",
  "6. La historia continuará": "Cuando Promeia consume juicio por frialdad para activar floridez, activa adicionalmente un efecto especial de floridez, lo que inflige daño de Anomalía de Atributo del atributo correspondiente equivalente a un multiplicador del 200 %, y recupera 5 ptos. de frío corrosivo y 100 dB. Este efecto puede activarse como máximo una vez cada 15 s.\nAdemás, el daño de Anomalía de Atributo y el daño de disfunción infligidos por Promeia ignoran un 15 % de la resistencia a todos los tipos de daño del enemigo."
  }'::jsonb,
  -- 10. ID del W-Engine recomendado
  50, 
  -- 11. ID del Set de Discos recomendado (Efecto 4 piezas)
  25, 
  -- 12. ID del Set de Discos recomendado (Efecto 2 piezas)
  18
);



-- =========================================================================
-- 5. BANGBOOS
-- =========================================================================
INSERT INTO bangboos (id, nombre, rango, habilidades, imagen_url) VALUES 
(1, 'Bultergueist', 'A', 
  '{
    "activa": {
      "nombre": "Foco maldito",
      "descripcion": "Flota en el aire y dispara continuamente láseres contra los enemigos, lo que inflige una gran cantidad de daño etéreo."
    },
    "adicional": {
      "nombre": "Especialista en sustos",
      "descripcion": "Cuando en el equipo hay al menos un agente atacante o anómalo, al ejecutar la técnica activa, hay un 60% de probabilidad de que el daño infligido por esta instancia de la técnica activa aumente en un 40%/50%/60%/70%/80%."
    },
    "cadena": {
      "nombre": "Travieso a la fuga",
      "descripcion": "Cae en picado desde el aire contra los enemigos y explota al golpearlos, lo que inflige una gran cantidad de daño etéreo."
    }
  }'::jsonb, 
  '/uploads/Bultergueist.webp'
),
(2, 'Megafán', 'S', 
  '{
    "activa": {
      "nombre": "Yo apoyo a los ángeles",
      "descripcion": "Al ejecutar la habilidad, Megafán comienza a animar, lo que recupera PV para el personaje activo continuamente en una cantidad equivalente a los PV máx. de Megafán."
    },
    "adicional": {
      "nombre": "Explosión de poder del fandom",
      "descripcion": "Se activa cuando hay 2 o más personajes de la afiliación de los Ángeles de la Delusión en el equipo: cuando Megafán activa su técnica activa, el Ataque de todos los agentes del equipo aumenta en 50 ptos. durante 30 s. La acumulación de Anomalía de Atributo de la técnica en cadena del bangbú aumenta en un 15 %."
    },
    "cadena": {
      "nombre": "¡A por el merchandising!",
      "descripcion": "Utiliza varitas luminiscentes para ejecutar ataques contra los enemigos de enfrente, lo que inflige daño etéreo y provoca una gran acumulación de Anomalía etérea."
    }
  }'::jsonb, 
  '/uploads/Megafan.webp'
),
(3, 'Pimpollo', 'S', 
  '{
    "activa": {
      "nombre": "Estrella fugaz de seis puntas",
      "descripcion": "Al ejecutar la habilidad, si no hay una espada en el campo de batalla, Pimpollo invoca seis espadas voladoras para atacar al enemigo objetivo, lo que inflige daño físico y acumula Anomalía física. Si hay una espada en el campo de batalla, Pimpollo pisa la espada para acumular fuerza y ejecuta una ráfaga de ataques más poderosos, lo que inflige una gran cantidad de daño físico y acumula Anomalía física."
    },
    "adicional": {
      "nombre": "Vinculo de almas gemelas",
      "descripcion": "Se activa cuando Ye Shunguang está en el equipo. El daño que inflige Pimpollo aumenta en un 30 %. Al usar la técnica activa, si está bajo el efecto de velo etéreo: veredicto, genera 1 espada en el campo."
    },
    "cadena": {
      "nombre": "Espada de la unidad",
      "descripcion": "Invoca una gigantesca espada de la unificación con la que carga contra los enemigos de enfrente, lo que inflige una gran cantidad de daño físico y acumula Anomalía física."
    }
  }'::jsonb, 
  '/uploads/Pimpollo.webp'
),
(4, 'Bloquebú', 'A', 
  '{
    "activa": {
      "nombre": "Rayuela de bloques",
      "descripcion": "Al ejecutar la habilidad, agita el báculo para ensamblar los bloques y convertirlos en un gran martillo con el que ataca a los enemigos. Tras golpear a los enemigos cuatro veces o balancear el gran martillo tres veces, salta y ejecuta un golpe descendente, lo que hace que salgan volando bloques puntiagudos en todas las direcciones. Los enemigos que entren en contacto con los bloques puntiagudos reciben daño físico."
    },
    "adicional": {
      "nombre": "¡Luz roja! ¡Quietos todos!",
      "descripcion": "Cuando en el equipo hay al menos un personaje auxiliar, la cantidad de bloques puntiagudos que genera la técnica activa de Bloquebú aumenta a 7 y el daño que inflige la técnica activa aumenta en un 30 %."
    },
    "cadena": {
      "nombre": "Balón prisionero en el castillo",
      "descripcion": "Agita el báculo con todas sus fuerzas para lanzar bloques hacia delante, lo que inflige una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Bloquebu.webp'
),
(5, 'Birkblick', 'S', 
  '{
    "activa": {
      "nombre": "Combo de montaje",
      "descripcion": "Al ejecutar la habilidad, invoca una torreta que puede disparar hasta 3 ráfagas láser para atacar al objetivo, lo que inflige daño físico y acumula una gran cantidad de Aturdimiento."
    },
    "adicional": {
      "nombre": "Efecto de observador",
      "descripcion": "Si en el equipo hay 2 o más personajes afiliados a la Auditoría Krampus, cuando un agente ejecuta una técnica especial EX, el Aturdimiento provocado por Birkblick aumenta en un 4 % durante 15 s. Pueden acumularse hasta 3 cargas. La duración se reinicia con cada activación. Al alcanzar las 3 cargas, el daño aumenta en un 10 %."
    },
    "cadena": {
      "nombre": "Combate en primer plano",
      "descripcion": "Utiliza la torreta para disparar un potente láser contra los enemigos frente a él, lo que inflige una gran cantidad de daño fisico."
    }
  }'::jsonb, 
  '/uploads/Birkblick.webp'
),
(6, 'Excalibú', 'A', 
  '{
    "activa": {
      "nombre": "Liberación de la espada sagrada",
      "descripcion": "Al ejecutar la habilidad, Excalibú intenta sacar la espada. Si no logra sacarla, realiza tres martillazos consecutivos, lo que inflige daño físico. Si logra sacarla, ejecuta un corte contra el objetivo, lo que inflige una gran cantidad de daño físico."
    },
    "adicional": {
      "nombre": "Juramento de la victoria",
      "descripcion": "Cuando en el equipo hay al menos 1 personaje disruptivo, al activar la técnica activa, se garantiza que Excalibú pueda sacar la espada, y el daño infligido aumenta en un 30 %."
    },
    "cadena": {
      "nombre": "Poder marcial del rey",
      "descripcion": "Usa la espada sagrada para ejecutar un martillazo con fuerza contra los enemigos frente a él, lo que inflige una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Excalibu.webp'
),
(7, 'Mercury', 'S', 
  '{
    "activa": {
      "nombre": "Contramedida táctica I: Supresión en la línea de fuego",
      "descripcion": "Al ejecutar la habilidad, Mercury invoca un vehículo y lo conduce mientras lanza un torrente de llamas continuo contra los enemigos, lo que inflige una gran cantidad de daño ígneo."
    },
    "adicional": {
      "nombre": "Contramedida táctica II: Sinergia en combate",
      "descripcion": "Cuando en el equipo hay 1 o más personajes del Ministerio de Defensa, cuando un agente inflige daño con una réplica, el daño de la siguiente técnica activa de Mercury aumenta en un 45 %. Puede acumularse una carga cada 5 s, hasta un máximo de 2 cargas."
    },
    "cadena": {
      "nombre": "Contramedida táctica III: Emboscada explosiva",
      "descripcion": "Se convierte en proyectil para ser disparado por el vehículo contra el enemigo e impactar contra él, lo que inflige una gran cantidad de daño ígneo."
    }
  }'::jsonb, 
  '/uploads/Mercury.webp'
),
(8, 'Señorita Esme', 'S', 
  '{
    "activa": {
      "nombre": "Transformación estelar",
      "descripcion": "Al ejecutar la habilidad, entra en el estado de vuelo e invoca al azar 3 burbujas ilusorias o luceros resplandecientes. Cuando el personaje toca una burbuja ilusoria, recupera PV. Cuando el personaje toca un lucero resplandeciente, recupera Energía. Cuanto mayor sea el porcentaje de PV del personaje activo, mayor será la probabilidad de que Señorita Esme invoque luceros resplandecientes."
    },
    "adicional": {
      "nombre": "Intercambio estelífero",
      "descripcion": "Cuando en el equipo hay 2 o más personajes afiliados a la Cabaña del Terror, cuando el personaje toca una burbuja ilusoria, la recuperación de PV aumenta en un 20%. Cuando el personaje toca un lucero resplandeciente, la recuperación de Energía aumenta en un 20%."
    },
    "cadena": {
      "nombre": "Bomba sidérea",
      "descripcion": "Dispara una bomba mágica, lo que inflige daño físico y provoca una gran cantidad de acumulación de Anomalía física."
    }
  }'::jsonb, 
  '/uploads/Señorita Esme.webp'
),
(9, 'Rocaleón', 'S', 
  '{
    "activa": {
      "nombre": "Danza del fénix",
      "descripcion": "Durante su ejecución, lanza una esfera de piedra hacia los enemigos que rebota entre ellos e inflige una gran cantidad de daño físico a todos los enemigos a los que haya alcanzado."
    },
    "adicional": {
      "nombre": "Camino de las nubes",
      "descripcion": "Cuando en el equipo hay 2 o más agentes afiliados al Pináculo Yunkui, el daño infligido por Rocaleón aumenta en un 25%. Cuando un agente activa la técnica definitiva, el TdE de la técnica activa de Rocaleón se reduce en 4s. Se puede activar hasta un máximo de 2 veces. Cuando Rocaleón ejecuta su técnica activa, el número de activaciones disponibles se restablece."
    },
    "cadena": {
      "nombre": "Rugido del león argénteo",
      "descripcion": "Gira y golpea a los enemigos frente a él, lo que inflige una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Rocaleon.webp'
),
(10, 'Currabú', 'A', 
  '{
    "activa": {
      "nombre": "¡Espíritu corporativo al máximo!",
      "descripcion": "Durante su ejecución, golpea al enemigo objetivo con su mesa y su ordenador, infligiendo daño físico."
    },
    "adicional": {
      "nombre": "Rompeteclados",
      "descripcion": "Cuando en el equipo hay al menos un agente atacante o anómalo, cada vez que ejecuta una técnica activa, el daño de la técnica activa aumenta en un 25%. Puede aumentar hasta en un 100%."
    }
  }'::jsonb, 
  '/uploads/Currabu.webp'
),
(11, 'Robin', 'S', 
  '{
    "activa": {
      "nombre": "Fin de la función",
      "descripcion": "Durante su ejecución, dispara un arma mágica que lanza cartas aleatorias y, según el tipo de carta, produce diferentes efectos: Corazones: inflige una gran cantidad de daño físico. Picas: inflige daño físico y provoca una gran cantidad de Aturdimiento. Coronas: inflige daño etéreo y acumula una gran cantidad de Anomalía etérea."
    },
    "adicional": {
      "nombre": "Maestro del disfraz",
      "descripcion": "Cuando en el equipo hay 1 agente de Ruiseñor, si la especialidad del agente activo cumple con los requisitos, la técnica activa dispara una carta específica con una bonificación: Atacante: solo dispara corazones. El daño aumenta en un 45%. Aturdidor: solo dispara picas. El Aturdimiento provocado aumenta en un 27%. Anómalo: solo dispara coronas. La acumulación de Anomalía de Atributo aumenta en un 90%."
    },
    "cadena": {
      "nombre": "¡Que empiece el espectáculo!",
      "descripcion": "Lanza una granada mágica hacia delante, lo que inflige daño etéreo y provoca acumulación de Anomalía etérea."
    }
  }'::jsonb, 
  '/uploads/Robin.webp'
),
(12, 'Snap', 'S', 
  '{
    "activa": {
      "nombre": "¡Clic! ¡Mira a la cámara!",
      "descripcion": "Durante su ejecución, limpia la lente de la cámara y obtiene 3 carretes. Mientras Snap tenga carretes, cuando un agente ejecuta un contraataque, un apoyo rápido o un ataque sucesivo, Snap consume 1 carrete para sacar una foto y aplicarle al agente el estado de superestrella, aumentando el daño que inflige el agente durante 22 s."
    },
    "adicional": {
      "nombre": "Momento de superestrella",
      "descripcion": "Cuando en el equipo hay 2 o más agentes de las Estrellas de Lyra, cuando Snap le aplica el estado de superestrella a un agente, dicho agente recupera al instante PV equivalentes al 4 % de sus PV máx."
    },
    "cadena": {
      "nombre": "¡Clic! ¡No parpadees!",
      "descripcion": "Usa un poderoso flash para cegar al objetivo, infligiendo daño etéreo y provocando acumulación de Anomalía etérea."
    }
  }'::jsonb, 
  '/uploads/Snap.webp'
),
(13, 'Peleabú', 'A', 
  '{
    "activa": {
      "nombre": "¡Impacto de meteorobú!",
      "descripcion": "Durante su ejecución, acumula fuerza y entra en el estado de ascensión. En el estado de ascensión, cuando un agente golpea a un enemigo con un ataque pesado, Peleabú ejecuta un batacazo, infligiendo daño igneo."
    },
    "adicional": {
      "nombre": "Puñetazo de apertura",
      "descripcion": "Cuando en el equipo hay al menos un agente atacante o anómalo: al comenzar el combate, Peleabú entra en el estado de ascensión de forma anticipada. Además, el daño que inflige el primer batacazo aumenta en un 120 / 150 / 180 / 210 / 240 %."
    },
    "cadena": {
      "nombre": "Ráfaga canicular",
      "descripcion": "Salta y ejecuta golpes continuos contra los enemigos frente a él en un área grande, infligiendo daño ígneo."
    }
  }'::jsonb, 
  '/uploads/Peleabu.webp'
),
(14, 'Agente Gulliver', 'S', 
  '{
    "activa": {
      "nombre": "Operación de emergencia",
      "descripcion": "Durante su ejecución, ejecuta tres disparos perforantes hacia delante, infligiendo daño eléctrico y provocando acumulación de Anomalía eléctrica."
    },
    "adicional": {
      "nombre": "Escuadrón de asalto bangbú",
      "descripcion": "Cuando en el equipo hay 2 o más agentes de la División N.º 6 del Departamento de Operaciones Anticavidades, al golpear a un enemigo afectado por electrochoque con una técnica activa o una técnica en cadena del bangbú, el daño infligido aumenta a un 30 / 37 / 45 / 52 / 60 %. Al golpear a un enemigo afectado por una Anomalía de Atributo distinta a la Anomalía eléctrica, la acumulación de Anomalía de Atributo del ataque aumenta en un 60 / 75 / 90 / 105 / 120 %."
    },
    "cadena": {
      "nombre": "Hora del asalto",
      "descripcion": "Ejecuta un potente disparo perforante hacia delante, infligiendo daño eléctrico y provocando una gran acumulación de Anomalía eléctrica."
    }
  }'::jsonb, 
  '/uploads/Agente Gulliver.webp'
),
(15, 'Caballerobú', 'A', 
  '{
    "activa": {
      "nombre": "¡A la carga, jinete!",
      "descripcion": "Durante su ejecución, salta repetidamente a lomos de Albino Saltarín y crea tres luceros caballeriles. Cuando un agente entra en contacto con un lucero caballeril, recupera energía."
    },
    "adicional": {
      "nombre": "Gallardía caballeresca",
      "descripcion": "Cuando en el equipo hay al menos un agente auxiliar, cuando un agente entra en contacto con un lucero caballeril, su Ataque aumenta en 20 / 25 / 30 / 35 / 40 + nivel del bangbú × 1.2 / 1.4 / 1.6 / 1.8 / 2 ptos. durante 10 s."
    },
    "cadena": {
      "nombre": "¡Rocín, derribo saltarín!",
      "descripcion": "Invoca 3 Albinos Saltarines que pisotean el área frente a ellos hasta 10 veces, infligiendo daño etéreo a los enemigos dentro de dicha área."
    }
  }'::jsonb, 
  '/uploads/Caballerobu.webp'
),
(16, 'Malotebú', 'A', 
  '{
    "activa": {
      "nombre": "Lluvia de cohetes",
      "descripcion": "Lanza cohetes y cócteles molotov contra el enemigo que infligen daño ígneo."
    },
    "adicional": {
      "nombre": "Mecha muy corta",
      "descripcion": "Cuando en el equipo hay al menos un agente anómalo, el daño infligido por la técnica en cadena del bangbú aumenta en un 20 / 25 / 30 / 35 / 40 %. Cuando el objetivo es un enemigo orgánico, esta bonificación aumenta en un 15 / 19 / 23 / 27 / 30 % adicional."
    },
    "cadena": {
      "nombre": "¡Cohete explosivo!",
      "descripcion": "Salta hacia delante y dispara un cohete que inflige daño ígneo a los enemigos frente a él en un área grande."
    }
  }'::jsonb, 
  '/uploads/Malotebu.webp'
),
(17, 'Moccus Tinto', 'A', 
  '{
    "activa": {
      "nombre": "Rugir de ruedas",
      "descripcion": "Conduce su motocicleta y empuja al enemigo más lejano hacia el agente, infligiendo daño físico."
    },
    "adicional": {
      "nombre": "Técnica de derrapaje",
      "descripcion": "Cuando en el equipo hay 2 o más agentes afiliados a los Hijos de Calidón, el daño infligido por la técnica activa aumenta en un 36 / 45 / 54 / 63 / 72 %. Tras infligir daño a un enemigo con la técnica activa, cuando el objetivo es derrotado, el TdE de la habilidad disminuye en 4 / 5 / 6 / 7 / 8 s."
    },
    "cadena": {
      "nombre": "Acelerón trepidante",
      "descripcion": "Atropella a los enemigos con su motocicleta y provoca una explosión, infligiendo una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Moccus Tinto.webp'
),
(18, 'Cui', 'S', 
  '{
    "activa": {
      "nombre": "¡Grr! ¡Guau, guau, guau!",
      "descripcion": "Ejecuta un ataque en dos fases en el que muerde y desgarra a los enemigos frente a él, infligiendo daño físico."
    },
    "adicional": {
      "nombre": "Perro de seguridad provisional",
      "descripcion": "Cuando en el equipo hay 2 o más agentes afiliados al Equipo de Respuesta de la Unidad de Investigación Criminal, tras ejecutar una técnica activa, hay una probabilidad del 50 % de ejecutar adicionalmente un ataque con mordiscos. Este efecto se puede activar hasta un máximo de 3 veces de manera consecutiva. El daño de la técnica en cadena del bangbú aumenta en un 35 %."
    },
    "cadena": {
      "nombre": "¡Guau, guau!",
      "descripcion": "Muerde y desgarra continuamente a los enemigos frente a él, infligiendo una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Cui.webp'
),
(19, 'Manekibú', 'A', 
  '{
    "activa": {
      "nombre": "Despilfarro",
      "descripcion": "Arroja una gran cantidad de monedas que golpean continuamente, infligiendo daño físico y acumula Anomalía física."
    },
    "adicional": {
      "nombre": "La suerte es producto del entrenamiento",
      "descripcion": "Cuando en el equipo hay 2 o más agentes físicos, aumenta la acumulación de Anomalía de Atributo de la técnica activa en un 20 / 25 / 30 / 35 / 40 %. Se extiende la duración de los golpes continuos de la técnica activa durante 0.8 / 1 / 1.2 / 1.4 / 1.6 s."
    }
  }'::jsonb, 
  '/uploads/Manekibu.webp'
),
(20, 'Explorabú', 'A', 
  '{
    "activa": {
      "nombre": "Detector de éter modificado",
      "descripcion": "Explora los alrededores y cava un hueco. Al terminar de cavar, otorgará a los agentes una bonificación al azar con base a sus atributos. Bonificación 1: recuperación de PV. Bonificación 2: obtención de escudo. Bonificación 3: aumento de Recuperación de Energía"
    },
    "adicional": {
      "nombre": "Pericia en rastreo de éter",
      "descripcion": "Cuando haya un agente Auxiliar en el equipo, aumenta la bonificación de la técnica activa sobre los agentes. Bonificación 1: aumenta la recuperación de PV en un 22.5 %. Bonificación 2: otorga un 22.5 % de escudo. Bonificación 3: aumenta la recuperación de Energía en 0.05 ptos. por segundo."
    }
  }'::jsonb, 
  '/uploads/Explorabu.webp'
),
(21, 'Sumobú', 'A', 
  '{
    "activa": {
      "nombre": "Quebrantarrocas",
      "descripcion": "Da un salto hacia el enemigo y ejecuta un ataque en picado que inflige daño físico en área. Esta técnica es capaz de interrumpir al enemigo."
    },
    "adicional": {
      "nombre": "La fuerza de una legión",
      "descripcion": "Cuando haya un agente aturdidor en el equipo, si el Aturdimiento del objetivo es mayor al 50 %, aumenta el Aturdimiento infligido por la técnica activa en un 18 / 22.5 / 27 / 31.5 / 36 %."
    }
  }'::jsonb, 
  '/uploads/Sumobu.webp'
),
(22, 'Cartonbú', 'A', 
  '{
    "activa": {
      "nombre": "Señuelo de cartón",
      "descripcion": "Se disfraza de bolsa de papel. Mientras esté disfrazado, tiene el efecto de provocación. Al ser atacado por un enemigo o al terminar la duración del disfraz, provocará una detonación que inflige daño físico en el AdE."
    },
    "adicional": {
      "nombre": "Coraza de cartón",
      "descripcion": "Cuando en el equipo hay 1 agente defensivo, al golpear al objetivo con una técnica en cadena del bangbú, todos los miembros del equipo obtendrán un escudo. Cuantos más enemigos sean golpeados, más fuerte será el escudo. Pueden obtener como máximo un escudo equivalente al [ ][ ]% de los PV máx. de Cartonbú."
    },
    "cadena": {
      "nombre": "Coraza de cartón (modo impacto)",
      "descripcion": "Se disfraza de bolsa de papel y salta sobre el enemigo. Al caer, provocará una explosión en un AdE grande, la cual inflige daño físico."
    }
  }'::jsonb, 
  '/uploads/Cartonbu.webp'
),
(23, 'Bolsabú', 'A', 
  '{
    "activa": {
      "nombre": "Cerca, más cerca...",
      "descripcion": "Lanza cortes continuos con sus dos espadas que infligen daño físico."
    },
    "adicional": {
      "nombre": "Listo para pelear",
      "descripcion": "Cuando en el equipo hay 1 agente atacante, aumenta el daño de la técnica en cadena del bangbú en un 30%."
    },
    "cadena": {
      "nombre": "¡Objetivo cercano!",
      "descripcion": "Ejecuta cortes continuos contra el objetivo, los cuales infligen una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Bolsabu.webp'
),
(24, 'Lloronbú', 'A', 
  '{
    "activa": {
      "nombre": "¡Granada va!",
      "descripcion": "Lanza granadas al enemigo que infligen daño ígneo y acumula Anomalía ígnea."
    },
    "adicional": {
      "nombre": "Acumulación de calor",
      "descripcion": "Cuando en el equipo hay 2 o más agentes ígneos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 60%."
    },
    "cadena": {
      "nombre": "Obsequio explosivo",
      "descripcion": "Arroja una bomba al objetivo, la cual inflige daño ígneo y acumula una gran cantidad de Anomalía ígnea."
    }
  }'::jsonb, 
  '/uploads/Lloronbu.webp'
),
(25, 'Aguacabú', 'A', 
  '{
    "activa": {
      "nombre": "Zumito nectarino",
      "descripcion": "Lanza frutos jugosos al agente activo. En caso de no alcanzarlo, caerán al suelo, donde permanecerán cierto tiempo. Al tocar un fruto jugoso, el agente recuperará PV. Puede activarse hasta 15 veces por combate."
    },
    "adicional": {
      "nombre": "Suplemento de azúcar",
      "descripcion": "Cuando en el equipo hay 1 agente auxiliar, aumenta la recuperación de PV de la técnica activa en un 20%. Aumenta el número de activaciones de la técnica activa en 3."
    }
  }'::jsonb, 
  '/uploads/Aguacabu.webp'
),
(26, 'Dianabú', 'A', 
  '{
    "activa": {
      "nombre": "En el blanco",
      "descripcion": "Dispara dardos que infligen daño físico."
    },
    "adicional": {
      "nombre": "Trayectoria cruzada",
      "descripcion": "Cuando en el equipo hay 1 agente perforante, aumenta el daño de la técnica en cadena del bangbú en un 30%."
    },
    "cadena": {
      "nombre": "Dardo arriesgado",
      "descripcion": "Se catapulta a sí mismo en dirección del objetivo y ejecuta cortes continuos, los cuales infligen una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Dianabu.webp'
),
(27, 'Electrobú', 'A', 
  '{
    "activa": {
      "nombre": "¡Gigavoltio!",
      "descripcion": "Se abalanza sobre el enemigo y ejecuta varios chispazos que infligen daño eléctrico y acumula Anomalía eléctrica."
    },
    "adicional": {
      "nombre": "Corriente inductiva",
      "descripcion": "Cuando en el equipo hay 2 o más agentes eléctricos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 60%."
    },
    "cadena": {
      "nombre": "¡Teravoltio!",
      "descripcion": "Ejecuta chispazos continuos contra el objetivo, los cuales infligen daño eléctrico y acumulan una gran cantidad de Anomalía eléctrica."
    }
  }'::jsonb, 
  '/uploads/Electrobu.webp'
),
(28, 'Magnebú', 'A', 
  '{
    "activa": {
      "nombre": "Bloqueo magnético",
      "descripcion": "Atrae a los enemigos cercanos e inflige daño físico a todos los enemigos que haya alcanzado."
    },
    "adicional": {
      "nombre": "Atracción magnética",
      "descripcion": "Cuando en el equipo hay al menos 1 agente anómalo: Aumenta el rango y el daño de la técnica activa en un 30%."
    }
  }'::jsonb, 
  '/uploads/Magnebu.webp'
),
(29, 'Valvulabú', 'A', 
  '{
    "activa": {
      "nombre": "Vapor etéreo",
      "descripcion": "Crea una burbuja etérea. Al entrar en contacto con un agente, este recupera energía."
    },
    "adicional": {
      "nombre": "Balance de presión",
      "descripcion": "Cuando en el equipo hay 1 agente auxiliar, cuando la burbuja etérea entre en contacto con un agente, aumenta la Recuperación de Energía de los agentes inactivos en un 60% de la Recuperación de Energía original."
    }
  }'::jsonb, 
  '/uploads/Valvulabu.webp'
),
(30, 'Tiburonbú', 'S', 
  '{
    "activa": {
      "nombre": "Tiburón terrestre",
      "descripcion": "Coloca una trampa en el suelo. Al activarse, prensará al enemigo y lanzará un torpedo que inflige daño glacial y acumula Anomalía glacial."
    },
    "adicional": {
      "nombre": "Aguas heladas",
      "descripcion": "Cuando en el equipo hay 2 o más agentes glaciales, aumenta la acumulación de Anomalía de Atributo por medio de la técnica en cadena del bangbú en un 100%."
    },
    "cadena": {
      "nombre": "Persecución implacable",
      "descripcion": "Coloca una trampa y salta hacia el objetivo, lo que provoca una explosión al aterrizar que inflige daño glacial y una gran acumulación de Anomalía glacial."
    }
  }'::jsonb, 
  '/uploads/Tiburonbu.webp'
),
(31, 'Belcebú', 'A', 
  '{
    "activa": {
      "nombre": "Beso cautivador",
      "descripcion": "Entra en el estado de vuelo, durante el cual dispara proyectiles perseguidoras que infligen daño etéreo y acumulan Anomalía etérea."
    },
    "adicional": {
      "nombre": "Bonificación de actividad etérea",
      "descripcion": "Cuando en el equipo hay 2 o más agentes etéreos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 40%. Después de ejecutar una técnica en cadena del bangbú, aumenta la duración del ataque coordinado en 5s. Aumenta el número de activaciones en 4."
    },
    "cadena": {
      "nombre": "Beso desconcertante",
      "descripcion": "Dispara láseres contra el objetivo y entra en el estado de ataque coordinado. Cuando el agente ataque en este estado, disparará proyectiles perseguidores coordinados con los ataques del agente activo que infligen daño etéreo y acumulan Anomalía etérea durante un máximo de 30[ ]s o hasta activarla 10 veces."
    }
  }'::jsonb, 
  '/uploads/Belcebu.webp'
),
(32, 'Sonibú', 'S', 
  '{
    "activa": {
      "nombre": "¡Buuum!",
      "descripcion": "Monta un cohete contra el objetivo. Si consigue golpearlo, el cohete explotará, infligiendo daño ígneo a los enemigos cercanos. Estos acumularán Anomalía ígnea."
    },
    "adicional": {
      "nombre": "Inyección de combustible",
      "descripcion": "Cuando en el equipo hay 2 o más agentes ígneos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 100 %."
    },
    "cadena": {
      "nombre": "Bombardeo exprés",
      "descripcion": "Monta un cohete contra el objetivo. Si consigue golpearlo, el cohete explotará violentamente, infligiendo daño ígneo a los enemigos cercanos. Estos acumularán una gran cantidad de Anomalía ígnea."
    }
  }'::jsonb, 
  '/uploads/Sonibu.webp'
),
(33, 'Cablebú', 'S', 
  '{
    "activa": {
      "nombre": "Francotirador galvánico",
      "descripcion": "Lanza un ataque de cañón eléctrico sobre el enemigo que inflige daño eléctrico y provoca acumulación de Anomalía eléctrica."
    },
    "adicional": {
      "nombre": "Electromancia",
      "descripcion": "Cuando en el equipo hay 2 o más agentes eléctricos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 100%."
    },
    "cadena": {
      "nombre": "Resistencia a alta presión",
      "descripcion": "Ejecuta un fuerte ataque eléctrico contra todos los enemigos cercanos, el cual inflige daño eléctrico y provoca una gran acumulación de Anomalía eléctrica."
    }
  }'::jsonb, 
  '/uploads/Cablebu.webp'
),
(34, 'Ecobú', 'S', 
  '{
    "activa": {
      "nombre": "Miniagujero negro",
      "descripcion": "Invoca un agujero negro de éter que atrae a los enemigos, inflige daño etéreo a todos los enemigos que haya alcanzado y provoca la acumulación de Anomalía etérea."
    },
    "adicional": {
      "nombre": "Efecto de radiación",
      "descripcion": "Cuando en el equipo hay 2 o más agentes etéreos, aumenta la Anomalía de Atributo acumulada por medio de la técnica en cadena del bangbú en un 100 / 125 / 150 / 175 / 200 %."
    },
    "cadena": {
      "nombre": "Agujero negro primordial",
      "descripcion": "Arroja una bomba de éter al objetivo, la cual inflige daño etéreo y provoca una gran acumulación de Anomalía etérea."
    }
  }'::jsonb, 
  '/uploads/Ecobu.webp'
),
(35, 'Revolverbú', 'S', 
  '{
    "activa": {
      "nombre": "Revólver de la fortuna",
      "descripcion": "Utiliza una bala aleatoria para distintos movimientos. Cartucho de fuegos artificiales estruendosos: realiza poderosos disparos reforzados que infligen una gran cantidad de daño físico y una gran cantidad de acumulación de Anomalía física. Cartucho de fuegos artificiales clásicos: dispara contra el enemigo para infligir daño físico y acumular Anomalía física. Bola de pintura: fracasa al disparar y lanza pétalos por la boquilla del arma."
    },
    "adicional": {
      "nombre": "La suerte es una habilidad",
      "descripcion": "Cuando en el equipo hay 2 o más agentes físicos: Aumenta la acumulación de Anomalía de Atributo por medio de técnicas en cadena del bangbú en un 100 / 125 / 150 / 175 / 200 %."
    },
    "cadena": {
      "nombre": "Gatillo de la suerte",
      "descripcion": "Ejecuta disparos consecutivos contra el objetivo, los cuales infligen daño físico y provocan una gran cantidad de acumulación de Anomalía física."
    }
  }'::jsonb, 
  '/uploads/Revolverbu.webp'
),
(36, 'Amparo', 'S', 
  '{
    "activa": {
      "nombre": "Excavación a toda prisa",
      "descripcion": "Entra en estado de conducción y choca contra los enemigos. Al golpearlos, ejecuta un ataque de taladro que inflige daño físico."
    },
    "adicional": {
      "nombre": "Movilización del equipo de perforación",
      "descripcion": "Cuando en el equipo hay 2 agentes afiliados a Construcciones Belobog, aumenta el daño infligido por la técnica en cadena del bangbú en un 20 / 25 / 30 / 35 / 40 %. Mientras el objetivo se encuentre afectado por calcinación o electrochoque, esta bonificación aumenta en un 20 / 25 / 30 / 35 / 40 % adicional."
    },
    "cadena": {
      "nombre": "Taladro demoledor",
      "descripcion": "Entra en el estado de conducción y choca contra el objetivo, infligiendo varios ataques de taladro que infligen una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Amparo.webp'
),
(37, 'Amillion', 'S', 
  '{
    "activa": {
      "nombre": "Cañón portátil - Recolector de deudas",
      "descripcion": "Instala una ametralladora en el suelo que dispara continuamente, infligiendo daño físico."
    },
    "adicional": {
      "nombre": "Leyes de la jungla de asfalto",
      "descripcion": "Cuando en el equipo hay 2 agentes afiliados a las Liebres Astutas, aumenta el daño infligido por la técnica en cadena del bangbú. Cuantos menos enemigos haya en combate, mayor será el efecto. Puede aumentar hasta en un 45 / 56 / 67 / 78 / 90 %."
    },
    "cadena": {
      "nombre": "Cañón portátil: Limpiadeudas",
      "descripcion": "Utiliza la ametralladora Gatling y dispara un cañonazo final hacia el objetivo, infligiendo una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Amillion.webp'
),
(38, 'Mayordomo', 'S', 
  '{
    "activa": {
      "nombre": "Hora del té",
      "descripcion": "Se pone a preparar té y aperitivos con esmero. Al servirlos, el agente objetivo recupera energía."
    },
    "adicional": {
      "nombre": "Criado servil",
      "descripcion": "Cuando en el equipo hay 2 agentes afiliados a Servicios Domésticos Victoria, la técnica activa aumenta la Recuperación de Energía de los agentes en un 20 %."
    },
    "cadena": {
      "nombre": "Aperitivo vespertino",
      "descripcion": "Utiliza una sartén y bollitos para atacar al objetivo, infligiendo una gran cantidad de daño físico."
    }
  }'::jsonb, 
  '/uploads/Mayordomo.webp'
),
(39, 'Pingubú', 'A', 
  '{
    "activa": {
      "nombre": "Témpanos danzantes",
      "descripcion": "Los témpanos danzantes ejecutan cortes continuos que inflingen daño glacial y acumulan Anomalía glacial."
    },
    "adicional": {
      "nombre": "Campo de hielo",
      "descripcion": "Cuando en el equipo hay 2 o más agentes glaciales, aumenta la acumulación de Anomalía de Atributo por medio de la técnica de cadena del bangbú en un 60 / 75 / 90 / 105 / 120 %."
    },
    "cadena": {
      "nombre": "Torbellino helado",
      "descripcion": "Ejecuta cortes continuos contra el objetivo, los cuales inflingen daño glacial y acumulan una gran cantidad de Anomalía glacial."
    }
  }'::jsonb, 
  '/uploads/Pingubu.webp'
);

-- =========================================================================
-- ARREGLO DE SECUENCIAS (AUTO_INCREMENT)
-- Al insertar IDs manualmente (1, 2, 3...), la secuencia interna de PostgreSQL
-- no avanza. Esto sincroniza las secuencias al numero mas alto.
-- =========================================================================
SELECT setval('agentes_id_seq', COALESCE((SELECT MAX(id) FROM agentes), 1));
SELECT setval('w_engines_id_seq', COALESCE((SELECT MAX(id) FROM w_engines), 1));
SELECT setval('sets_discos_id_seq', COALESCE((SELECT MAX(id) FROM sets_discos), 1));
SELECT setval('bangboos_id_seq', COALESCE((SELECT MAX(id) FROM bangboos), 1));
