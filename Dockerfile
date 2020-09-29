FROM continuumio/miniconda3

ENTRYPOINT []
CMD [ "/bin/bash" ]


# install packages by conda
RUN conda install -c rdkit rdkit

# install other dependencies by pip
ADD ./requirements.txt /tmp/requirements.txt
RUN pip install -qr /tmp/requirements.txt



ADD . /opt/webapp/
WORKDIR /opt/webapp

CMD ["python", "web_8_ReduceMemory.py"]

