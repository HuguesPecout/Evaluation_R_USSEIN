###################################################################################################
#                                                                                                 #
#                                     EVALUATION R - 2024                                         #
#                                                                                                 #
###################################################################################################


###################################################################################################
# Chargement des librairies nécessaires 
###################################################################################################

library(sf)
library(tidygeocoder)
library(mapview)
library(osrm)

library(mapsf)
library(maptiles)
library(osrm)




###################################################################################################
# 1. Import et reprojection (1 points)
###################################################################################################

# Lister les couches géographiques d'un fichier GeoPackage
st_layers("data/GeoSenegal.gpkg")

## A.1 Import des données géographiques
pays <- st_read(dsn = "data/GeoSenegal.gpkg", layer = "Pays_voisins")
sen <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "Senegal")
reg <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "Regions")
dep <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "Departements")
loc <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "Localites")
USSEIN <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "USSEIN")
routes <-st_read(dsn = "data/GeoSenegal.gpkg", layer = "Routes")


## A.2 Reprojection des couches géographiques 
pays <- st_transform(pays, crs = "EPSG:3857")
sen <- st_transform(sen, crs = "EPSG:3857")
reg <- st_transform(reg, crs = "EPSG:3857")
dep <- st_transform(dep, crs = "EPSG:3857")
loc <- st_transform(loc, crs = "EPSG:3857")
USSEIN <- st_transform(USSEIN, crs = "EPSG:3857")
routes <- st_transform(routes, crs = "EPSG:3857")




###################################################################################################
# 2. Géocadage d’une adresse (2 points)
###################################################################################################

## B.1 Récupération de coordonnées géographiques

# Construction d'un data.frame avec nom et adresse
gare_tambacouda_df <- data.frame(name = "Gare de tambacounda",
                                 addresse = "Gare de tambacounda, Sénégal")

# Géocodage de l'adresse à partir de la base de données OpenStreetMap
gare_tambacouda_loc <- geocode(.tbl = gare_tambacouda_df, address =  addresse)

## B.2 Construisez un objet sf (couche géographique) à partir des coordonnées (WGS84) récupérées.
gare_tambacouda_sf <- st_as_sf(gare_tambacouda_loc , coords = c("long", "lat"), crs = 4326)


## B.3 Transformez cette nouvelle couche géographique en projection WGS 84 / UTM zone 28N (32628)
gare_tambacouda_sf <- st_transform(gare_tambacouda_sf, crs = "EPSG:3857")


## B.4 Affichez le point sur une carte interactive avec le package mapview
mapview(gare_tambacouda_sf)




###################################################################################################
# C. Calcul d'une matrice de distance
###################################################################################################



loc_chef_lieu_dep <- loc[loc$TYPELOCAL == 2, ]




dist <- osrmTable(src = gare_tambacouda_sf, 
                  dst = loc_chef_lieu_dep,
                  measure = c("distance", "duration"))


# mètres -> kilomètres
loc_chef_lieu_dep$dist_route_km <- as.numeric(dist$distances) / 1000
# Minutes -> heures
loc_chef_lieu_dep$dist_route_hr <- as.numeric(dist$durations) / 60

# Saint-Louis ! en 7 heure et 32 minutes !


osm_tiles <- get_tiles(x = st_buffer(sen, dist = 40000), zoom = 7, crop = TRUE)

# Affichage de la tuile
mf_raster(osm_tiles)
# Cartographie de l'indice de performance
mf_map(x = loc_chef_lieu_dep,
       var = "dist_route_hr",
       type = "prop",
       leg_pos = "right",
       inches = 0.6,
       leg_title = "Temps d'accès par la route",
       leg_size = 1.1,
       leg_title_cex = 0.9,
       leg_val_cex = 0.8,
       leg_val_rnd = 2,
       border = "white",
       lwd = 1.5,
       cex = 2.5,
       add = TRUE)


# Affichage de la grande Mosquee de Touba
mf_map(gare_tambacouda_sf, lwd = 4, pch = 24, col="green4" , cex = 2.1, add = TRUE)
# Titre
mf_title("grqgrqqq, selon OpenStreetMap (OSRM), 2014", fg = "white")
# Sources
mf_credits(paste0(get_credit("OpenStreetMap"), " - OSRM, 2014"), cex = 0.8)

# dev.off()







