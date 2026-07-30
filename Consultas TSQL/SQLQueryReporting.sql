use DW_EDEs_Energia
go



select
s.Nombre,
convert(varchar,t.Fecha,103) Fecha, 
s.Direccion,
u.Provincia,
ROUND(f.EnergiaEntregada_GWh,2) Entregada, ROUND(f.EnergiaPerdida_GWh,2) Perdida
from FactEnergia as f
inner join DimSucursal as s on f.IdSucursal = s.IdSucursal
inner join DimTiempo as t on f.IdTiempo = t.IdTiempo
inner join DimUbicacion as u on f.IdUbicacion = u.IdUbicacion
where IdEDE = 'ED-ESTE-1' and t.Fecha between @FechaInicio and @FechaFin

