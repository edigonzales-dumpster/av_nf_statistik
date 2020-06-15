# av_nf_statistik

```
docker run --rm --name grundstuecksinformation-db -p 54321:5432 --hostname primary -e PG_DATABASE=grundstuecksinformation -e PG_LOCALE=de_CH.UTF-8 -e PG_PRIMARY_PORT=5432 -e PG_MODE=primary -e PG_USER=admin -e PG_PASSWORD=admin -e PG_PRIMARY_USER=repl -e PG_PRIMARY_PASSWORD=repl -e PG_ROOT_PASSWORD=secret -e PG_WRITE_USER=gretl -e PG_WRITE_PASSWORD=gretl -e PG_READ_USER=ogc_server -e PG_READ_PASSWORD=ogc_server -v ~/pgdata-grundstuecksinformation:/pgdata:delegated sogis/oereb-db:latest
```

```
java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar --dbhost localhost --dbport 54321 --dbdatabase grundstuecksinformation --dbusr admin --dbpwd admin --dbschema agi_av_nf_statistik --nameByTopic --createFk --createFkIdx --createMetaInfo --models SO_AGI_AV_NF_Statistik_20200615 --modeldir .  --schemaimport

java -jar /Users/stefan/apps/ili2pg-4.3.1/ili2pg-4.3.1.jar --dbhost localhost --dbport 54321 --dbdatabase grundstuecksinformation --dbusr admin --dbpwd admin --dbschema agi_av_nf_statistik --models SO_AGI_AV_NF_Statistik_20200615 --modeldir .  --export agi_av_nf_statistik.xtf
```