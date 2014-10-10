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
//    production {
//         dataSource {
//            dbCreate = "update"
//            url = "jdbc:postgresql:bdatosco_consulrima"
//          
//        } 
//    }   

    	production {
//		dataSource {
//			dbCreate = "update"
//			url = "jdbc:postgresql:aiag"
//		}
dataSource {
        dbCreate = "update"
        driverClassName = "org.postgresql.Driver"
        dialect = org.hibernate.dialect.PostgreSQLDialect
    
        uri = new URI(System.env.DATABASE_URL?:"postgres://gdmkjoyhhuvgsy:9TYhcOdovjX5W-u8Hu3ugIZ7z7@ec2-54-83-43-49.compute-1.amazonaws.com:5432/d844ka7j9ips36")

        url = "jdbc:postgresql://"+uri.host+uri.path
        username = uri.userInfo.split(":")[0]
        password = uri.userInfo.split(":")[1]
    }
	}
}
}


