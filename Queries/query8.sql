/* Query 8 */
/* Le type d'acquisition des différentes oeuvres de chaque artiste */
Select f.id_auteur AS Auteur, acq.type AS Type_Acquisition, count(f.id_oeuvre) AS Oeuvres
from faits_oeuvre f, dim_acquisition acq
where f.id_acquisition = acq.id
group by ROLLUP (f.id_auteur,acq.type)
order by f.id_auteur, acq.type;