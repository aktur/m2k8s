# m2k8s

## Week one:
- problems with time zone of mysql server. Nedded edit url to:

```mysql://localhost:3306/profiles?useLegacyDatetimeCode=false&serverTimezone=UTC```

- still database errors when inserting data via POST (profileRepository.save(profile))

```
13:18:23.576 [http-nio-8080-exec-1] ERROR o.h.id.enhanced.TableStructure - could not read a hi value
java.sql.SQLSyntaxErrorException: Table 'profiles.hibernate_sequence' doesn't exist
```
