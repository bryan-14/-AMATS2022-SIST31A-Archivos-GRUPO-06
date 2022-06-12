CREATE DATABASE sevilla;
USE sevilla;
--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` INT(11) NOT NULL,
  `categoria` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Carnes'),
(2, 'Bebidas'),
(3, 'Lacteos'),
(4, 'Granos basicos');

SELECT*FROM categorias
-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `precio_normal` DECIMAL(10,2) NOT NULL,
  `precio_rebajado` DECIMAL(10,2) NULL,
  `cantidad` INT(11) NOT NULL,
  `imagen` VARCHAR(50) NOT NULL,
  `id_categoria` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'Six pack cerveza', 'Oferta six pack corona extra botella 355ml', '10.40', '9.48', 4, '20220608183716.jpg', 2),
(2, 'six pack petit', 'oferta six pack jugos petit ', '3.00', '2.50', 4, '20220608190921.jpg', 2),
(3, 'pack cocacola', 'six pack cocacola lata', '4.30', '3.80', 4, '20220608190804.jpg', 2),
(4, 'Botella de leche', 'leche salud descremada 1.89L', '5.00', '4.60', 5, '20220608191031.jpg', 3),
(5, 'Caja leche fresa', 'leche fresa salud 946ml ', '3.00', '3.75', 6, '20220608191013.jpg', 3),
(6, 'Pechuga de pollo', 'bandeja 10 pechugas de pollo sin huesos', '10.00', '9.00', 10, '20220608191105.jpg', 1),
(7, 'Chuleta de cerdo', 'bandeja 4 chuletas de cerdo', '6.00', '5.00', 10, '20220608191125.jpg', 1),
(8, 'Arroz blaco 5lb', 'Arroz blanco cinco estrellas 5lb', '4.00', '3.90.00', 18, '20220608191212.jpg', 4),
(9, 'Arroz blaco 2lb', 'Arroz blanco cinco estrellas 2lb', '2.90', '2.50.00', 18, '20220608191151.jpg', 4),
(10, 'Cafe riko', 'Caja de cafe riko 50 sobres', '2.00', '1.35', 10, '20220608191235.jpg', 4),
(11, 'Cafe coscafe', 'caja de coscafe 40 sobres', '2.00', '1.30.00', 18, '20220608191254.jpg', 4);

SELECT*FROM productos

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` INT(11) NOT NULL,
  `usuario` VARCHAR(20) NOT NULL,
  `gmail` VARCHAR(100) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `clave` VARCHAR(100) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
CREATE TABLE detalleproducto(
id_detalleproducto INT NOT NULL,
id_producto INT NOT NULL,
nombre VARCHAR (500)NOT NULL,
precio DECIMAL(10,2)

)ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `detalleproducto`

 MODIFY `id_detalleproducto` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2,
  ADD PRIMARY KEY (`id_detalleproducto`);

ALTER TABLE `detalleproducto`
  ADD CONSTRAINT `detalleproducto_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

CREATE TABLE pedidos(
id INT NOT NULL,
id_detalleproducto INT NOT NULL,
cliente VARCHAR (60) NOT NULL,
direccion TEXT NOT NULL,
telefono INT NOT NULL,
gmail  TEXT NOT NULL

)ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

ALTER TABLE `pedidos`
MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2,
  ADD PRIMARY KEY (`id`);
  
  ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`id_detalleproducto`) REFERENCES `detalleproducto` (`id_detalleproducto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;





CREATE TABLE `administrador` (
  `id` INT(11) NOT NULL,
  `usuario` VARCHAR(20) NOT NULL,
  `nombre` VARCHAR(100) NOT NULL,
  `clave` VARCHAR(100) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `administrador` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Fernando Lopez', '21232f297a57a5a743894a0e4a801fc3');


--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_categoria` (`id_categoria`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
  ALTER TABLE `administrador`
  MODIFY `id` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2,
  ADD PRIMARY KEY (`id`);

--
-- Restricciones para tablas volcadas`sevilla`
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
