  curl -XGET 'localhost:9200/_cat/indices?v'
  curl -XGET 'localhost:9200/filebeat-2017.03.29/_search?pretty&q=response=200' ^
  curl -XGET 'localhost:9200/filebeat-2017.03.30/_search?pretty&q=response=200'
