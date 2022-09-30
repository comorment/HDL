all: hdl.sif

%.sif: dockerfiles/%/Dockerfile
	docker build -t $* -f dockerfiles/$*/Dockerfile . && scripts/from_docker_image.sh $* 

# Example commands executed by this make file
# 
# Run "make hdl.sif" will trigger this:
# docker build -t hdl -f dockerfiles/hdl/Dockerfile . && scripts/from_docker_image.sh hello && mv           # produces hdl.sif
#  
#
#
