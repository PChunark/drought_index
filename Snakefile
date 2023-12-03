# Listing of a target that we want snakemake to generate
rule targets:
  input:
    "data/ghcnd_all.tar.gz",
    "data/ghcnd_all_files.txt",
    "data/ghcnd-inventory.txt",
    "data/ghcnd-stations.txt"

rule get_all_achieve:
  input:
    script = "code/get_ghcnd_data.bash"
  output:
    "data/ghcnd_all.tar.gz"
  params:
    "ghcnd_all.tar.gz"
  shell:
    """
    {input.script} {params}
    """

rule get_all_filenames:
  input:
    script = "code/get_ghcnd_all_files.bash",
    achieve = "data/ghcnd_all.tar.gz"
  output:
    "data/ghcnd_all_files.txt"
  shell:
    "{input.script}"

rule get_inventory:
  input:
    script = "code/get_ghcnd_data.bash"
  output:
    "data/ghcnd-inventory.txt"
  params:
    file = "ghcnd-inventory.txt"
  shell:
    """
    {input.script} {params.file}
    """

rule get_station_data:
  input:
    script = "code/get_ghcnd_data.bash"
  output:
    "data/ghcnd-stations.txt"
  params:
    file = "ghcnd-stations.txt"
  shell:
    """
    {input.script} {params.file}
    """