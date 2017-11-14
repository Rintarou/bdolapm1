/* Query 6 */
/* Nombre d'oeuvres par type d'acquisition et par domaine */
Select acq.type AS Type_Acquisition,dom.domaine AS Domaine, count(f.id_oeuvre) AS Oeuvres, GROUPING(acq.type) AS Acqu, GROUPING(dom.domaine) AS Dom
from faits_oeuvre f, dim_acquisition acq, dim_domaine dom
where f.id_acquisition = acq.id AND f.id_domaine = dom.id
group by CUBE (acq.type,dom.domaine)
order by acq.type,dom.domaine;