#!/bin/sh
# Convert all XML process descriptions into ZOO processes
for name in `find gms/Testing/Python/ -name \*.xml` ; do
	echo "convert $name into `basename $name .xml `"
	script=`basename $name .xml | sed -e s/\\\./_/g`
	python GrassXMLtoPyWPS.py -x $name -z ${script}.zcfg -p ${script}.py
done

#echo "r.add.xml to r_add.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.add.xml -z r_add.zcfg -p r_add.py
#echo "r.sub.xml to r_sub.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.sub.xml -z r_sub.zcfg -p r_sub.py
#echo "r.div.xml to r_div.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.div.xml -z r_div.zcfg -p r_div.py
#echo "r.mult.xml to r_mult.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.mult.xml -z r_mult.zcfg -p r_mult.py
#echo "r.watershed.xml to r_watershed.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.watershed.xml -z r_watershed.zcfg -p r_watershed.py
#echo "r.univar.xml to r_univar.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.univar.xml -z r_univar.zcfg -p r_univar.py
#echo "r.neighbors.xml to r_neighbors.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.neighbors.xml -z r_neighbors.zcfg -p r_neighbors.py
#echo "r.contour.xml to r_contour.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/r.contour.xml -z r_contour.zcfg -p r_contour.py
#echo "v.buffer.xml to v_buffer.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/v.buffer.xml -z v_buffer.zcfg -p v_buffer.py
#echo "v.voronoi.xml to v_voronoi.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/v.voronoi.xml -z v_voronoi.zcfg -p v_voronoi.py
#echo "v.to.rast.xml to v_to_rast.zcfg"
#python GrassXMLtoZCFG.py -x gms/Testing/Python/v.to.rast.xml -z v_to_rast.zcfg -p v_to_rast.py

#echo "r.add.xml to r.add.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.add.xml -z r.add.yaml
#echo "r.sub.xml to r.sub.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.sub.xml -z r.sub.yaml
#echo "r.div.xml to r.div.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.div.xml -z r.div.yaml
#echo "r.mult.xml to r.mult.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.mult.xml -z r.mult.yaml
#echo "r.watershed.xml to r.watershed.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.watershed.xml -z r.watershed.yaml
#echo "r.univar.xml to r.univar.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.univar.xml -z r.univar.yaml
#echo "r.neighbors.xml to r.neighbors.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.neighbors.xml -z r.neighbors.yaml
#echo "r.contour.xml to r.contour.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/r.contour.xml -z r.contour.yaml
#echo "v.buffer.xml to v.buffer.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/v.buffer.xml -z v.buffer.yaml
#echo "v.voronoi.xml to v.voronoi.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/v.voronoi.xml -z v.voronoi.yaml
#echo "v.to.rast.xml to v.to.rast.yaml"
#python GrassXMLtoYAML.py -x gms/Testing/Python/v.to.rast.xml -z v.to.rast.yaml