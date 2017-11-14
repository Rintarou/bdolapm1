/* Query 7 */
/* Nombre d'oeuvres par lieu de naissance de l'auteur */
Select au.lieu_naissance AS Lieu_Naissance_Auteur, count(f.id_oeuvre) AS Oeuvres, rank() over (order by count(f.id_oeuvre) desc) AS Rang
from faits_oeuvre f, dim_auteur au
where f.id_auteur = au.id
group by au.lieu_naissance;