/* Query 3 */
/* Nombre d'oeuvre (dont l'ann�e d'acquisition est connue acquises par m�thode d'acquisition pour chaque ann�e */
Select acq.annee AS Annee_Acquisition,acq.type AS Type_Acquisition, count(f.id_oeuvre) AS Oeuvres
from faits_oeuvre f, dim_acquisition acq
where f.id_acquisition = acq.id AND acq.annee != 0
group by ROLLUP (acq.annee,acq.type)
order by acq.annee;