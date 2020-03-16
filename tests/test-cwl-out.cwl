class: CommandLineTool
cwlVersion: v1.2.0-dev2
requirements:
  - class: ShellCommandRequirement
hints:
  DockerRequirement:
    dockerPull: "debian:stretch-slim"

inputs: []

outputs:
  - id: foo
    type: File

arguments:
   - valueFrom: >
       echo foo > foo && echo '{"foo": {"path": "$(runtime.outdir)/foo", "class": "File"} }' > cwl.output.json
     shellQuote: false
