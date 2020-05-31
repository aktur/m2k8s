# m2k8s

## Week one:
- problems with time zone of mysql server. Nedded edit url to:

```mysql://localhost:3306/profiles?useLegacyDatetimeCode=false&serverTimezone=UTC```

- needed to fix database manually as it had some rubbish columns like first_name, last_name, etc. causing 500 server errors.

## Week two:

- "Configure persistent storage for the image volumes MySQL uses (in /var/lib/mysql)." - this is propably wrong. I've created image volumes for profile container in /data

- after docerizing mysql and bumped version to 8.0.20 there is no more problems with serverTimezone like mentioned in week one.