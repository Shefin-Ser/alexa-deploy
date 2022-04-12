FROM fusuf/whatsasena:latest

RUN git clone https://github.com/Shefin-Ser/Alexa /root/WhatsAsenaDuplicated
WORKDIR /root/WhatsAsenaDuplicated/
ENV TZ=Asia/Kolkata
RUN npm install supervisor -g
RUN yarn install --ignore-engines
RUN git clone https://github.com/prince-rudh/media

CMD ["node", "bot.js"]
