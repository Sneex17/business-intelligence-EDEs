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

--Miercoles 5/8/2026
select
s.Nombre,
convert(varchar,t.Fecha,103) Fecha, 
s.Direccion,
u.Provincia,
f.EnergiaEntregada_GWh, f.EnergiaPerdida_GWh
from FactEnergia as f
inner join DimSucursal as s on f.IdSucursal = s.IdSucursal
inner join DimTiempo as t on f.IdTiempo = t.IdTiempo
inner join DimUbicacion as u on f.IdUbicacion = u.IdUbicacion
where IdEDE = 'ED-SUR-2' and t.Fecha between @FechaInicio and @FechaFin

select
s.Nombre,
convert(varchar,t.Fecha,103) Fecha, 
s.Direccion,
u.Provincia,
f.EnergiaEntregada_GWh, f.EnergiaPerdida_GWh
from FactEnergia as f
inner join DimSucursal as s on f.IdSucursal = s.IdSucursal
inner join DimTiempo as t on f.IdTiempo = t.IdTiempo
inner join DimUbicacion as u on f.IdUbicacion = u.IdUbicacion
where IdEDE = 'ED-NORTE-3' and t.Fecha between @FechaInicio and @FechaFin



select IdEDE, Nombre from DimEDE