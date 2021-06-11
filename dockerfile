FROM python:3.8

WORKDIR /app/

ADD requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

ADD datacraft.py /app/datcraft.py
ADD css/ /app/css/
ADD utils/ /app/utils/
ADD models/ /app/models/
ADD images/ /app/images

CMD ["streamlit", "run", "/app/datcraft.py"]