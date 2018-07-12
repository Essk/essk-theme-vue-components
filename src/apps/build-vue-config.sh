#!/bin/sh
cat header.snp > ../../vue.config.js
for comp in `ls *.js`
do
    name=`echo $comp|cut -d. -f1`
    echo "Creating config snippet for $name"
    echo "           $name : \"./src/apps/$comp\"," >>../../vue.config.js
done
cat footer.snp >> ../../vue.config.js