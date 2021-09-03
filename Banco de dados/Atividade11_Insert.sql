Insert cliente_rel values(176882798, 'Thales Mário Luís Jesus', 'Avenida Ilídio Sampaio 1744','Icó','CE','63430-970','(88) 3593-1634','(88) 99210-9146', '--');
Insert cliente_rel values(363882234, 'Tereza Lúcia Farias', 'Avenida Ilídio Sampaio 1744', 'Icó', 'CE', '63430-970', '(88) 2785-9056', '(88) 98431-4189', '--');
Insert cliente_rel values(691898252, 'Giovana Olivia Allana Pinto', 'Rua Alto da Pedra', 'Fortaleza', 'CE', '60540-382', '(88) 3640-2880', '(88) 98395-4911', '--');
Insert cliente_rel values(446786697, 'Pietro Theo das Neves', 'Rua Jozefa Tomé de Macedo Silva', 'Iguatu', 'CE', '63504-088', '--', '--', '--');
Insert cliente_rel values(155919293,  'Mirella Patrícia Pinto', 'Rua 10 Novo Oriente', 'Maracanaú', 'CE', '61921-110', '--', '--', '--');

Insert cliente_vip_rel values(176882798, 1353, '10%');
Insert cliente_especial_rel values(446786697, '5%');

Insert mercadoria_rel values('560', 269.00,  '15%');
Insert mercadoria_rel values('567', 299.00, '10%');
Insert mercadoria_rel values('755', 664.05, '30%');
Insert mercadoria_rel values('878', 499.00, '25%');
Insert mercadoria_rel values('103', 859.00, '15%');
Insert mercadoria_rel values('868', 379.00, '20%');
Insert mercadoria_rel values('795', 449.00, '5%');
Insert mercadoria_rel values('585', 999.00, '35%');
Insert mercadoria_rel values('974', 729.00, '15%');
Insert mercadoria_rel values('81', 259.00, '5%');

Insert pedido_rel values('1826', '20140822', '20140915', 'Avenida Ilídio Sampaio 1744', 'Icó', 'CE', '63430-970', '176882798');
Insert pedido_rel values('1633', '20140823', '20140910', 'Avenida Ilídio Sampaio 1744', 'Icó', 'CE', '63430-970', '176882798');
Insert pedido_rel values('1962', '20140918', '20141002', 'Avenida Ilídio Sampaio 1744', 'Icó', 'CE', '63430-970', '176882798');

Insert pedido_rel values('1256', '20140624', '20140812', 'Rua Jozefa Tomé de Macedo Silva', 'Iguatu', 'CE', '63504-088', '446786697');
Insert pedido_rel values('1454', '20140521', '20140610', 'Rua Jozefa Tomé de Macedo Silva', 'Iguatu', 'CE', '63504-088', '446786697');
Insert pedido_rel values('1559', '20140218', '20140302', 'Rua Jozefa Tomé de Macedo Silva', 'Iguatu', 'CE', '63504-088', '446786697');

Insert pedido_rel values('1929', '20141124', '20141219', 'Avenida Ilídio Sampaio 1744', 'Icó', 'CE', '63430-970', '363882234');

Insert Item_pedido_rel values('19718', '1826', 1.00, 49.00, '878');
Insert Item_pedido_rel values('19354', '1633', 1.00, 25.90, '81');
Insert Item_pedido_rel values('17821', '1962', 1.00, 72.90, '974');
Insert Item_pedido_rel values('16994', '1256', 1.00, 18.95, '868');
Insert Item_pedido_rel values('17209', '1454', 1.00, 49.95, '585');
Insert Item_pedido_rel values('16418', '1559', 1.00, 22.50, '795');
Insert Item_pedido_rel values('15139', '1929', 1.00, 42.95, '103');

select * from item_pedido_rel;

select * from pedido_rel
where Data_Pedido between '20140101' and '20141231';

select * from mercadoria_rel left join item_pedido_rel on codmer = codmer1
where NO_ITEM is null;

select * from mercadoria_rel D, item_pedido_rel E
where D.codmer != E.codmer1;

select icms from mercadoria_rel
where icms >= 10 and icms <= 50;

select nome, CODCLI, fone from cliente_rel
where Cidade = 'Icó' and Estado = 'CE';

select PRECO, CODMER, NO_ITEM from mercadoria_rel, item_pedido_rel left join pedido_Rel on Codped = CODPED1 where CODMER = 81;

