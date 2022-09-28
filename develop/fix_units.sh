

#~ NCFILE=${MAINFOLDER}/pcrglobwb2_input/global_05min/groundwater/aquifer_thickness_estimate/thickness_05min.nc
#~ VARNAME="thickness_05min_map"
#~ ncatted -O -h -a units,${VARNAME},o,c,"m" ${NCFILE}
#~ ncdump -h ${NCFILE}

cd /scratch-shared/edwindql/dynqual_input_release/version_2022_09_develop/loadingInput
NCFILE=PowRF_1980_2019.nc
VARNAME="PowRF"
ncatted -O -h -a units,${VARNAME},o,c,"m3/s" ${NCFILE}
ncdump -h ${NCFILE}

cd /scratch-shared/edwindql/dynqual_input_release/version_2022_09_develop/loadings
NCFILE=TSS_2000.nc
VARNAME="TSS_2000_map"
ncatted -O -h -a units,${VARNAME},o,c,"mg/l" ${NCFILE}
ncdump -h ${NCFILE}


cd /scratch-shared/edwindql/dynqual_input_release/version_2022_09_develop/routing

NCFILE=bankfull_capacity.nc
VARNAME="bankfull_capacity_map"
ncatted -O -h -a units,${VARNAME},o,c,"m2" ${NCFILE}
ncdump -h ${NCFILE}

NCFILE=bankfull_depth.nc
VARNAME="bankfull_depth_map"
ncatted -O -h -a units,${VARNAME},o,c,"m" ${NCFILE}
ncdump -h ${NCFILE}

NCFILE=channel_gradient.nc
VARNAME="channel_gradient_map"
ncatted -O -h -a units,${VARNAME},o,c,"m/m" ${NCFILE}
ncdump -h ${NCFILE}

NCFILE=lddsound_05min.nc
VARNAME="lddsound_05min_map"
ncatted -O -h -a units,${VARNAME},o,c,"pcraster_ldd" ${NCFILE}
ncdump -h ${NCFILE}


# INITIAL CONDITIONS

cd /scratch-shared/edwindql/dynqual_input_release/version_2022_09_develop/initialConditions

mkdir nc_without_units
cp -rv *.nc nc_without_units
chmod -R a-w nc_without_units









cdo setunit,"m3 s-1"    nc_without_units/avgBaseflowLong_*-12-31.nc                        avgBaseflowLong_*-12-31.nc
cdo setunit,"m3 s-1"    nc_without_units/avgDischargeLong_*-12-31.nc                       avgDischargeLong_*-12-31.nc
cdo setunit,"m3 s-1"    nc_without_units/avgDischargeShort_*-12-31.nc                      avgDischargeShort_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/avg_irrGrossDemand_*-12-31.nc                     avg_irrGrossDemand_*-12-31.nc  
cdo setunit,"m3 s-1"    nc_without_units/avgLakeReservoirInflowShort_*-12-31.nc            avgLakeReservoirInflowShort_*-12-31.nc
cdo setunit,"m3 s-1"    nc_without_units/avgLakeReservoirOutflowLong_*-12-31.nc            avgLakeReservoirOutflowLong_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/avg_netLqWaterToSoil_*-12-31.nc                   avg_netLqWaterToSoil_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/avgTotalGroundwaterAbstractionIni_*-12-31.nc      avgTotalGroundwaterAbstractionIni_*-12-31.nc
cdo setunit,"m3"        nc_without_units/channelStorage_*-12-31.nc                         channelStorage_*-12-31.nc
cdo setunit,"m"         nc_without_units/iceThickness_*-12-31.nc                           iceThickness_*-12-31.nc
cdo setunit,"m"         nc_without_units/interceptStor_forest_*-12-31.nc                   interceptStor_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/interceptStor_grassland_*-12-31.nc                interceptStor_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/interceptStor_irrNonPaddy_*-12-31.nc              interceptStor_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/interceptStor_irrPaddy_*-12-31.nc                 interceptStor_irrPaddy_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/interflow_forest_*-12-31.nc                       interflow_forest_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/interflow_grassland_*-12-31.nc                    interflow_grassland_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/interflow_irrNonPaddy_*-12-31.nc                  interflow_irrNonPaddy_*-12-31.nc
cdo setunit,"m day-1"   nc_without_units/interflow_irrPaddy_*-12-31.nc                     interflow_irrPaddy_*-12-31.nc
cdo setunit,"m6 day-2"  nc_without_units/m2tDischargeLong_*-12-31.nc                       m2tDischargeLong_*-12-31.nc
cdo setunit,"m3"        nc_without_units/readAvlChannelStorage_*-12-31.nc                  readAvlChannelStorage_*-12-31.nc
cdo setunit,"m3 day-1"  nc_without_units/riverbedExchange_*-12-31.nc                       riverbedExchange_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedBOD_*-12-31.nc                              routedBOD_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedDomBOD_*-12-31.nc                           routedDomBOD_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedextLivBOD_*-12-31.nc                        routedextLivBOD_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedintLivBOD_*-12-31.nc                        routedintLivBOD_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedManBOD_*-12-31.nc                           routedManBOD_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedUSRBOD_*-12-31.nc                           routedUSRBOD_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedDomFC_*-12-31.nc                            routedDomFC_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedextLivFC_*-12-31.nc                         routedextLivFC_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedFC_*-12-31.nc                               routedFC_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedintLivFC_*-12-31.nc                         routedintLivFC_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedManFC_*-12-31.nc                            routedManFC_*-12-31.nc
cdo setunit,"cfu"       nc_without_units/routedUSRFC_*-12-31.nc                            routedUSRFC_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedDomTDS_*-12-31.nc                           routedDomTDS_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedIrrTDS_*-12-31.nc                           routedIrrTDS_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedManTDS_*-12-31.nc                           routedManTDS_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedTDS_*-12-31.nc                              routedTDS_*-12-31.nc
cdo setunit,"g"         nc_without_units/routedUSRTDS_*-12-31.nc                           routedUSRTDS_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowCoverSWE_forest_*-12-31.nc                    snowCoverSWE_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowCoverSWE_grassland_*-12-31.nc                 snowCoverSWE_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowCoverSWE_irrNonPaddy_*-12-31.nc               snowCoverSWE_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowCoverSWE_irrPaddy_*-12-31.nc                  snowCoverSWE_irrPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowFreeWater_forest_*-12-31.nc                   snowFreeWater_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowFreeWater_grassland_*-12-31.nc                snowFreeWater_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowFreeWater_irrNonPaddy_*-12-31.nc              snowFreeWater_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/snowFreeWater_irrPaddy_*-12-31.nc                 snowFreeWater_irrPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/storGroundwater_*-12-31.nc                        storGroundwater_*-12-31.nc
cdo setunit,"m"         nc_without_units/storGroundwaterFossil_*-12-31.nc                  storGroundwaterFossil_*-12-31.nc
cdo setunit,"m"         nc_without_units/storLow_forest_*-12-31.nc                         storLow_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/storLow_grassland_*-12-31.nc                      storLow_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/storLow_irrNonPaddy_*-12-31.nc                    storLow_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/storLow_irrPaddy_*-12-31.nc                       storLow_irrPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/storUpp_forest_*-12-31.nc                         storUpp_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/storUpp_grassland_*-12-31.nc                      storUpp_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/storUpp_irrNonPaddy_*-12-31.nc                    storUpp_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/storUpp_irrPaddy_*-12-31.nc                       storUpp_irrPaddy_*-12-31.nc
cdo setunit,"m3 s-1"    nc_without_units/subDischarge_*-12-31.nc                           subDischarge_*-12-31.nc
cdo setunit,"day"       nc_without_units/timestepsToAvgDischarge_*-12-31.nc                timestepsToAvgDischarge_*-12-31.nc
cdo setunit,"m"         nc_without_units/topWaterLayer_forest_*-12-31.nc                   topWaterLayer_forest_*-12-31.nc
cdo setunit,"m"         nc_without_units/topWaterLayer_grassland_*-12-31.nc                topWaterLayer_grassland_*-12-31.nc
cdo setunit,"m"         nc_without_units/topWaterLayer_irrNonPaddy_*-12-31.nc              topWaterLayer_irrNonPaddy_*-12-31.nc
cdo setunit,"m"         nc_without_units/topWaterLayer_irrPaddy_*-12-31.nc                 topWaterLayer_irrPaddy_*-12-31.nc
cdo setunit,"m3"        nc_without_units/waterBodyStorage_*-12-31.nc                       waterBodyStorage_*-12-31.nc
cdo setunit,"K"         nc_without_units/waterTemperature_*-12-31.nc                       waterTemperature_*-12-31.nc


#~ /scratch-shared/edwindql/dynqual_input_release/version_2022_09_develop/initialConditions:
#~ total 2.3G
#~ drwxr-xr-x 2 edwindql edwindql  16K Sep 25 16:58 .
#~ drwxr-xr-x 7 edwindql edwindql 4.0K Sep 27 15:20 ..
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgBaseflowLong_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgDischargeLong_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgDischargeShort_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avg_irrGrossDemand_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgLakeReservoirInflowShort_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgLakeReservoirOutflowLong_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avg_netLqWaterToSoil_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 avgTotalGroundwaterAbstractionIni_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 channelStorage_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 iceThickness_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interceptStor_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interceptStor_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interceptStor_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interceptStor_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interflow_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interflow_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interflow_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 interflow_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 m2tDischargeLong_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 readAvlChannelStorage_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 riverbedExchange_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedDomBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedDomFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedDomTDS_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedextLivBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedextLivFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedintLivBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedintLivFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedIrrTDS_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedManBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedManFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedManTDS_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedTDS_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedUSRBOD_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedUSRFC_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 routedUSRTDS_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowCoverSWE_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowCoverSWE_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowCoverSWE_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowCoverSWE_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowFreeWater_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowFreeWater_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowFreeWater_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 snowFreeWater_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storGroundwater_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storGroundwaterFossil_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storLow_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storLow_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storLow_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storLow_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storUpp_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storUpp_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storUpp_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 storUpp_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 subDischarge_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 timestepsToAvgDischarge_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 topWaterLayer_forest_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 topWaterLayer_grassland_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 topWaterLayer_irrNonPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 topWaterLayer_irrPaddy_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 waterBodyStorage_2000-12-31.nc
#~ -rw-r--r-- 1 edwindql edwindql  36M Sep 25 16:58 waterTemperature_2000-12-31.nc
