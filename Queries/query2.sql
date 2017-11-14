/* Query 2 */
/* Top 10 des plus grandes oeuvres 3D (par volume) */
Select * from
(Select f.titre, f.id_auteur AS Auteur, dim.x * dim.y * dim.z AS Volume, rank() over (order by dim.x * dim.y * dim.z desc) AS Rang
from faits_oeuvre f, dim_dimensions dim
where f.id_dimensions = dim.id AND dim.z IS NOT NULL)
where Rownum <= 10;