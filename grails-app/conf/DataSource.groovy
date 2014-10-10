dataSource {
    pooled = true
    driverClassName = "org.postgresql.Driver"
    dialect = org.hibernate.dialect.PostgreSQLDialect
    username = "bdatosco_admin"
	password = "Consulrima2020"
}
hibernate {
    cache.use_second_level_cache=true
    cache.use_query_cache=true
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:postgresql:bdatosco_consulrima"
       
        }   
    }   
    test {
         dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql:bdatosco_consulrima"
            
        }  
    }   
    production {
         dataSource {
            dbCreate = "update"
            url = "jdbc:postgresql:bdatosco_consulrima"
          
        } 
    }   
}
