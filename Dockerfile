FROM continuumio/anaconda

EXPOSE 8888/tcp
EXPOSE 8888/udp

RUN /opt/conda/bin/conda install jupyter -y --quiet 
RUN mkdir /opt/notebooks 

RUN /opt/conda/bin/conda create -n spam -c cantera cantera ipython matplotlib nb_conda

RUN /opt/conda/bin/conda install nb_conda_kernels

#RUN /bin/bash -c "source activate spam"

CMD /bin/bash -c "set -x && source activate spam && /opt/conda/bin/jupyter notebook --notebook-dir=/opt/notebooks --ip='*' --port=8888 --no-browser --allow-root"