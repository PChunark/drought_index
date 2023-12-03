rule get_all_achieve:
  input:
    script = "code/get_ghcnd_data.bash"
  output:
    "data/ghcnd_all.tar.gz"
  params:
    "ghcnd_all.tar.gz"
  shell:
    """
    {input.script} {params.file}
    """