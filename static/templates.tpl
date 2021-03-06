{{define "pr_comment"}}
{{if .Title -}}
### {{.Title}}
{{end}}

{{if .CommitID -}}
**Commit Reference: {{.CommitID}}**
{{end}}

{{.Summary}}

{{if .Uploads -}}
**Associated Uploads**

{{range $dir, $uploads := .Uploads -}}
{{if ne $dir "." -}}
**`{{$dir}}`:**
{{end}}
{{range $upload := $uploads -}}
* [{{$upload.Name}}]({{$upload.URL}})
{{end}}
{{end}}
{{if .UploadsExpire -}}
Uploads will be available until `{{.UploadsExpire}}`
{{end}}
*Comment created by [`upr comment`](https://github.com/cloudops/upr).*
{{end}}
{{end}}