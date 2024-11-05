--01
-- select nome from cliente
-- where idmunicipio = (select idmunicipio from cliente where nome = 'Manoel')
-- and nome not like 'Manoel';


--02
-- SELECT data_pedido, valor FROM pedido
-- WHERE valor < (SELECT AVG(valor) 
-- FROM pedido
-- );


--03
-- SELECT p.data_pedido, p.valor, c.nome AS cliente, v.nome AS vendedor
-- FROM pedido p
-- JOIN cliente c ON p.idcliente = c.idcliente
-- JOIN vendedor v ON p.idvendedor = v.idvendedor
-- WHERE (
--     SELECT COUNT(*)
--     FROM pedido_produto pp
--     WHERE pp.idpedido = p.idpedido
-- ) >= 2;


--04
-- SELECT nome
-- FROM cliente
-- WHERE idmunicipio = (SELECT idmunicipio FROM transportadora 
--    WHERE nome = 'BSTransportes');


--05 
-- SELECT c.nome, m.nome AS municipio
-- FROM cliente c
-- JOIN municipio m ON c.idmunicipio = m.idmunicipio
-- WHERE c.idmunicipio IN (
--     SELECT idmunicipio 
--     FROM transportadora
-- );


--06
-- UPDATE pedido
-- SET valor = valor * 1.05
-- WHERE (
--     SELECT SUM(produto.valor)
--     FROM pedido_produto pp
--     JOIN produto ON pp.idproduto = produto.idproduto
--     WHERE pp.idpedido = pedido.idpedido
-- ) > (
--     SELECT AVG(total_valor)
--     FROM (
--         SELECT SUM(produto.valor) AS total_valor
--         FROM pedido_produto pp
--         JOIN produto ON pp.idproduto = produto.idproduto
--         GROUP BY pp.idpedido
--     ) AS subquery
-- );


--07
-- SELECT c.nome, COUNT(p.idpedido) AS quantidade_pedidos
-- FROM cliente c
-- JOIN pedido p ON c.idcliente = p.idcliente
-- GROUP BY c.nome;

--08
-- SELECT c.nome, COUNT(p.idpedido) AS quantidade_pedidos
-- FROM cliente c
-- LEFT JOIN pedido p ON c.idcliente = p.idcliente
-- GROUP BY c.nome
-- HAVING COUNT(p.idpedido) < 1;

