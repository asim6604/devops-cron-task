# Step 1: Use an official Node.js image
FROM node:18

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# Step 4: Copy the rest of your app files
COPY . .

# Step 5: Expose the port your app runs on (adjust if needed)
EXPOSE 8001

# Step 6: Start the app
CMD ["node", "index.js"]

