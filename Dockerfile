FROM node:16-alpine as base

WORKDIR /workspace
COPY . /workspace
EXPOSE 3000

# Add production state when needed
#
# FROM base as production
#

FROM base as development

ENV NODE_ENV=development
RUN apk add curl git
RUN npm install
CMD ["npm", "start:dev"]
