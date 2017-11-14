/* Query 4 */
/* Nombre d'oeuvre par année d'acquisition (0 = inconnue) et par domaine artistique */
Select acq.annee AS Annee_Acquisition,dom.domaine AS Domaine, count(f.id_oeuvre) AS Oeuvres
from faits_oeuvre f, dim_acquisition acq, dim_domaine dom
where f.id_acquisition = acq.id AND f.id_domaine = dom.id
group by CUBE (acq.annee,dom.domaine)
order by acq.annee;