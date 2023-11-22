FROM node:16-slim AS builder
WORKDIR /baasaccountsrestbusiness
COPY package.json .
RUN npm i

# Create a new stage for the production image
FROM node:16-slim
WORKDIR /baasaccountsrestbusiness

# Copy only necessary files from the builder stage
COPY --from=builder /baasaccountsrestbusiness/node_modules ./node_modules
COPY . .

EXPOSE 5003
CMD npm start