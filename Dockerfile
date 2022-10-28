#==============×==============#
#      Created by: Alfa-Ex
#=========× AyiinXd ×=========#

FROM ayiinxd/ayiin-userbot:buster

RUN git clone -b Ayiin-Userbot https://github.com/botkenzz/Yanzz-Userbot /home/Yanzzuserbot/ \
    && chmod 777 /home/Yanzzuserbot \
    && mkdir /home/Yanzzuserbot/bin/

COPY ./sample_config.env ./config.env* /home/Yanzzuserbot/

WORKDIR /home/Yanzzuserbot/

RUN pip install -r requirements.txt

CMD ["bash","start"]
