all: hdl.sif

%.sif: containers/%/Dockerfile
	docker build -t $* -f containers/$*/Dockerfile . && scripts/from_docker_image.sh $* 

# Example commands executed by this make file
# 
# Run "make hdl.sif" will trigger this:
# docker build -t hdl -f containers/hdl/Dockerfile . && scripts/from_docker_image.sh hello && mv           # produces hdl.sif
#  
#
#
