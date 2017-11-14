/* Query 1 */
/* Classement des plus grandes oeuvres 2D (par aire) */
Select f.titre, f.id_auteur AS Auteur, dim.x * dim.y AS Aire, rank() over (order by dim.x * dim.y desc) AS Rang
from faits_oeuvre f, dim_dimensions dim
where f.id_dimensions = dim.id AND dim.z IS NULL;
