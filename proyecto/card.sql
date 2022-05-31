
CREATE TABLE `categorias` (
  `id` INT(11) NOT NULL,
  `categoria` VARCHAR(50) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'Tecnologia'),
(2, 'Bebidas'),
(3, 'Muebles'),
(4, 'Ropas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` INT(11) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `descripcion` TEXT NOT NULL,
  `precio_normal` DECIMAL(10,2) NOT NULL,
  `precio_rebajado` DECIMAL(10,2) NOT NULL,
  `cantidad` INT(11) NOT NULL,
  `imagen` VARCHAR(50) NOT NULL,
  `id_categoria` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `precio_normal`, `precio_rebajado`, `cantidad`, `imagen`, `id_categoria`) VALUES
(1, 'laptop', 'lenovo core i7', '5000.00', '4800.00', 5, '20211210162502.jpg', 1),
(2, 'Celular', 'samsung galaxy a12', '800.00', '700.00', 20, '20211211192037.jpg', 1),
(3, 'CELULAR', 'LG K50', '800.00', '750.00', 23, '20211211212315.jpg', 1),
(4, 'COMPUTADORA', 'HP Touchsmart 300', '2500.00', '2000.00', 15, '20211211212449.jpg', 1),
(5, 'Vino', 'Ninguna', '28.00', '20.00', 30, '20211212082421.jpg', 2),
(6, 'Coca cola', '1.5 ml', '5.00', '5.00', 15, '20211212082628.jpg', 2),
(7, 'Escritorio', 'Meterial Fino', '230.00', '200.00', 10, '20211212082759.jpg', 3),
(8, 'Abrigo', 'Para niños', '130.00', '120.00', 90, '20211212083037.jpg', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `nombre`, `clave`) VALUES
(1, 'admin', 'Angel Sifuentes', '21232f297a57a5a743894a0e4a801fc3');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
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
