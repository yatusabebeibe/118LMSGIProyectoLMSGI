  (: filepath: /src/04.xquery :)
  concat(
  '{
      "distribuciones": [',
          for $l in doc("../data/01.xml")//lanzamientos/lanzamiento[@distribucion = "ubuntu" or @distribucion = "redhat"]
          return concat('{
              "distribucion": "',data($l/@distribucion),'",
              "version": "',data($l/@version),'"
          },'),'
      ]
  }'
  )
