FROM /app
WORKDIR package*.json
COPY ..
 

RUN npm install

CMD ["node","index.js"]
