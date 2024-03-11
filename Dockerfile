FROM pytorch/pytorch
LABEL developer="Sumin Yang <ysm0482@naver.com>"
#ENV USER_DIR=/var/jenkins_home
#ENV WORK_DIR=/home

#WORKDIR $WORK_DIR
RUN pwd
RUN ls -als /
RUN cat /etc/*release*

#COPY $USER_DIR/requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt

EXPOSE 5000
ENTRYPOINT jupyter lab --allow-root --ip 0.0.0.0 --port 5000
