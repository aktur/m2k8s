# m2k8s

## Week one:
- problems with time zone of mysql server. Nedded edit url to:

```mysql://localhost:3306/profiles?useLegacyDatetimeCode=false&serverTimezone=UTC```

- needed to fix database manually as it had some rubbish columns like first_name, last_name, etc. causing 500 server errors.