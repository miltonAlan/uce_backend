-- Consulta de responsables por activo fijo
select u.au_nombre,u.au_apellido,af.af_modelo,* 
from af_usuario u,af_activo_fijo af
where u.au_consecutivo = af.au_af_consecutivo
order by u.au_nombre

-- Consulta de movimientos por activo fijo
select * from af_historico;