---
{{- if .Values.migrations }}
apiVersion: v1
kind: ConfigMap
metadata:
  name: {{ .Release.Name }}-migrations
data:
  keycloak-changelog.yaml: |-
    includes:
      {{- range .Values.migrations }}
      - path: {{ .id }}.yaml
      {{- end }}
{{- range .Values.migrations }}
  {{ .id }}.yaml: |-
  {{- toYaml . | nindent 4 }}
{{- end }}
{{- end }}
