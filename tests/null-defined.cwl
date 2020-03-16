cwlVersion: v1.2.0-dev2
class: CommandLineTool
requirements:
  InlineJavascriptRequirement: {}
inputs:
  file1: File?
outputs:
  out:
    type: string
    outputBinding:
      glob: out.txt
      loadContents: true
      outputEval: $(self[0].contents)
stdout: out.txt
arguments: [echo, '$(inputs.file1 === null ? "t" : "f")']
