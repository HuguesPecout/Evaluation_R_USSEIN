# Evaluation pour le cours *Géomatique avec R* <img src="img/logo.png" align="right" width="140"/>

### Master Géomatique - Université du Sine Saloum El-Hâdj Ibrahima NIASS

*Hugues Pecout (CNRS, UMR Géographie-Cités)*

</br>

#### **A. Téléchargement de l’espace de travail et des données**

Téléchargez le projet Rstudio mis à disposition sur le dépôt : [**blablabla**](blablabla)

Pour cela, cliquez sur le boutton vert ***Code***, puis  sur ***Download ZIP***.   

</br>

![](img/download.png)

Une fois le dossier décompréssé, lancez le projet Rstudio en double-cliquant sur le fichier **Evaluation_R.Rproj**.

</br>

#### **B. Script R à rendre**

Renommez le fichier ***NOM_Prenom.R*** avec votre NOM et votre Prénom. N'utilisez pas de caractères spéciaux, ni d'espaces.   
**Réalisez l'ensemble de l'exercice dans ce fichier**. Une fois terminé, **renvoyez UNIQUEMENT ce fichier** par mail à l'adresse : 

<center> **hugues.pecout[@]cnrs.fr**.</center>

</br>

**Assurez vous bien que le script fonctionne avant d'envoyer votre script**. Pour cela vous pouvez relancer votre session R (ctrl+shift+F10) puis relancer le script. Vous pouvez aussi faire éxécuter votre script par l'un ou l'une de vos camarades.


</br>

#### **C. B. Données à disposition**


![](img/data.png)


Pour réalisez l'exercice, vous avez à disposition un **fichier GeoPackage** (**GeoSenegal.gpkg**) contenant 7 couches géographiques :

- **Pays_voisins** : Couche des frontières du Sénégal et de l'ensemble de ses pays limitrophes. Source : https://gadm.org/, 2014   
- **Senegal** : Couche des frontières du Sénégal. Source : https://gadm.org/, 2014   
- **Regions** : Couche des régions sénégalaises. Source : https://gadm.org/, 2014   
- **Departements** : Couche des départements sénégalais. Source : https://gadm.org/, 2014   
- **Localites** : Couche de points des localités sénégalaises. Source : Base de données géospatiales prioritaires du Sénégal. https://www.geosenegal.gouv.sn/, 2014. 
- **USSEIN** : Localisation de l'Université du Sine Saloum El-hâdj ibrahima NIASS. Source : Google Maps, 2014. 
- **Routes** : Couche du réseau routier sénégalais. Source : Base de données géospatiales prioritaires du Sénégal. https://www.geosenegal.gouv.sn/, 2014. 

</br>

#### **D. B. Système de notation**

5 points pour : 
Vous devez apporter un soin particulier à la présentation du code. Il doit être lisible aéré et commenté.
Vous devrez également soigner la présentation des cartes. Faites attention à l'othographe et n'oubliez pas les éléments d'habillage nécessaires.

Le reste des points est indiquez dans les consignes.

</br>


## **CONSIGNES**

#### **En vous aidant des manuels [Geomatique avec R](https://rcarto.github.io/geomatique_avec_r/) et [Cartographie avec R](https://rcarto.github.io/cartographie_avec_r/), réalisez les traitements suivants dans le fichier R renommé à votre nom**

</br>

#### 1. Import et reprojection (1 points)

##### 1.1 Importez l'ensemble des couches géographiques contenues dans le fichier GeoPackage **GeoSenegal.gpkg**.

##### 1.2 Reprojetez l'ensemble des couches géographiques en *WGS 84 / Pseudo-Mercator* (3857)

</br>

#### 2. Géocadage d'une adresse (2 points)

##### 2.1 Géocodez l'adresse suivante "Gare de tambacounda, Sénégal"

##### 2.2 Construisez une couche géographique (point) à partir de la longitude et latitude récupérées

##### 2.3 Reprojetez cette nouvelle couhe géographique en *Pseudo-Mercator* (3857)

##### 2.4 Vérifiez le géocodage de la gare de Tambacounda en affichant le point dans une carte interctive à l'aide de la librairie `mapview`

</br>


#### 3. Création d'une nouvelle couche géographique par séléction attributaire (1 points)

##### 3.1 Créez une nouvelle couche comportant uniquement les localités "Chef-lieu de département" (TYPELOCAL == 2) 


</br>


#### 4. Calcul d'une matrice de distance à partir de la base de données OpenStreetMap (2 points)

##### 4.1 Calculez une matrice de distances routières et de distance temps entre la gare de Tambacounda et les chef-lieu.

##### 4.2 Ajoutez ces distances routières et temps dans la couche géographique des chefs lieu de département. Profitez-en pour convertir ces valeurs en kilomètre et en heure

##### 4.3 Quel est le chef lieu de département le plus éloigné par la route de la gare de Tambacounda ? Combien d'heures faut-il (selon OpenStreetMap) pour rejoindre cette ville en voiture d ? Répondez directement en commentaire (#) dans le script.


</br>


#### 5. Cartographie des ditances-temps calculées (2 points)

##### 5.1 Récupérez une tuile OpenSteetMap (zoom = 7) pour l'emprise du sénégal, avec un buffer de 40 kilomètres.

##### 5.2 Sur ce fond de carte récupéré, construisez une carte thématique représentant le temps d'accès en temps entre la gare de Tambacounda et les différents chefs-lieu. Indiquez la localisation de la gare de Tambacounda sur cette carte. N'oubliez pas les éléments indispensables ! 



</br>




</br>
</br>



