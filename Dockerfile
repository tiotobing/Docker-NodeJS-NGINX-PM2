FROM node:10

# Set working directory
WORKDIR /usr/app

# Install PM2 globally
RUN npm install --global pm2

# Credential for real time monitoring PM2 Plus
ENV PM2_PUBLIC_KEY xxxxx
ENV PM2_SECRET_KEY xxxxx


# Copy "package.json" and "package-lock.json" before other files
# Utilise Docker cache to save re-installing dependencies if unchanged
COPY ./package*.json ./

# Install dependencies
RUN npm install

# Copy all files
COPY ./ ./

# Build app
#RUN npm run build

# Expose the listening port
EXPOSE 3000

# Launch app with PM2
CMD [ "pm2-runtime", "start", "npm", "--", "start" ]
