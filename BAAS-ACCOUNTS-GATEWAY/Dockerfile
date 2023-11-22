FROM node:16-slim AS builder
WORKDIR /baasaccountsgateway
COPY package.json .
RUN npm i

# Create a new stage for the production image
FROM node:16-slim
WORKDIR /baasaccountsgateway

# Copy only necessary files from the builder stage
COPY --from=builder /baasaccountsgateway/node_modules ./node_modules
COPY . .

EXPOSE 4004
CMD npm start
