/* Query 5 */
/* Nombre d'oeuvre de chaque type pour chaque auteur */
Select f.id_auteur AS Auteur,dom.domaine AS Domaine, count(f.id_oeuvre) AS Oeuvres, GROUPING_ID(f.id_auteur,dom.domaine) AS GroupingID
from faits_oeuvre f, dim_domaine dom
where f.id_domaine = dom.id
group by GROUPING SETS ((f.id_auteur,dom.domaine),(f.id_auteur),());