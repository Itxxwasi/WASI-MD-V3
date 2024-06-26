#FROM quay.io/wasitech/wasi-tech new version v3
FROM quay.io/sampandey001/secktor

RUN git clone https://github.com/Itxxwasi/WASI-MD-V3 /root/Itxxwasi

# Clear npm cache and remove node_modules directories
RUN npm cache clean --force
RUN rm -rf /root/Itxxwasi/node_modules

# Install dependencies
WORKDIR /root/Itxxwasi
RUN npm install

# Add additional Steps To Run...
EXPOSE 3000
CMD ["npm","start" ]
