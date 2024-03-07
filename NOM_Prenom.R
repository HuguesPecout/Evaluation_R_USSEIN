###################################################################################################
#                                                                                                 #
#                                     EVALUATION R - 2024                                         #
#                                                                                                 #
###################################################################################################


###################################################################################################
# Chargement des librairies nécessaires 
###################################################################################################




###################################################################################################
# 1. Import des données
###################################################################################################

# 1.1 Lister les couches géographiques d'un fichier GeoPackage (0,25 pt)

# 1.2 Import des données géographiques (0,25 pt)



###################################################################################################
# 2. Géocadage d’une adresse
###################################################################################################

## 2.1 Géocodez l’adresse (1 pt)

## 2.2 Construisez une couche géographique (point) à partir de la long et lat récupérées. (1 pt)

# 2.3 Reprojetez cette couche géographique en projection "WGS 84 / UTM zone 28N". (1 pt)

## 2.4 Vérifiez le géocodage à l’aide de la librairie mapview. (0.5 pt)





###################################################################################################
# 3. Séléction attributaire
###################################################################################################

## 3.1 Créez une nouvelle couche comportant uniquement les localités “Chef-lieu de département” (1 pt)





###################################################################################################
# 4. Calcul d’une matrice de distance à partir de la base de données OpenStreetMap
###################################################################################################

## 4.1 Calculez une matrice de distances routières et de distance temps entre la gare et les chef-lieu. (1 pt)

## 4.2 Ajoutez ces distances routières et temps dans la couche géographique des chefs lieu de département. 
## Profitez-en pour convertir ces valeurs en kilomètre et en heure. (1 pt)


## 4.3 Quel est le chef lieu de département le plus éloigné par la route de la gare de Tambacounda ? 
## Combien d’heures faut-il (selon OpenStreetMap) pour rejoindre cette ville en voiture ? 
## Affichez les réponses à ces deux questions dans la console. (1 pt)





###################################################################################################
# 5. Nombre d’aires protegées dans un rayon de 100km de la gare de Tambacounda
###################################################################################################

## 5.1 Créez une zone tampon de 50 Km autour de la gare de Tambacounda (1 pt)

## 5.2 Réalisez une séléction spatiale des aires protegees qui intersectent cette zone tampon de 50 km. (1 pt)

## 5.3 Combien et quels sont les noms des aires protégées situées à moins de 50 km de la gare de Tambacounda ? (1 pt)





###################################################################################################
# 6. Cartographie des aires protégées
###################################################################################################

## 6.1 Découpez la couche géographiques des aires protégées en fonction des limites du Sénégal. (1 pt)

## 6.2 Construisez une carte de typologie des aires protégées du Sénégal. (3.5 pts)






###################################################################################################
# 7. Question de cours
###################################################################################################

## 7.1 Dans le docuement Géomatique avec R, retrouvez quelle fonction du package terra permet 
## de découper une couche géographique raster en fonction de l’emprise d’une couche vectorielle. (1 pt)






                  