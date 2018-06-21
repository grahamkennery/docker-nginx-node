FROM nginx:1.15.0
RUN apt-get update && \
    apt-get install -y curl build-essential rsync && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get update && \
    apt-get install -y nodejs && \
    npm install -g yarn && \
    apt-get purge -y --auto-remove && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

