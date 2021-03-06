{{/* vim: set filetype=mustache: */}}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
*/}}
{{- define "helloworld.mysql.fullname" -}}
{{- printf "%s-mysql" .Release.Name | trunc 63 | trimSuffix "-" -}}
{{- end -}}


{{/*
Return the MySQL Hostname
*/}}
{{- define "helloworld.databaseHost" -}}
        {{- printf "%s" (include "helloworld.mysql.fullname" .) -}}
{{- end -}}