# Basic UI Development for Pipe Management Company Landing Page 
To create an interactive landing page for a pipe management company with three main sections: Map, What's Up, and Goal. The goal is to provide a basic UI that can be easily adjusted later once the official design is completed.

## Brief overview of the technology used

- [Perrier](https://www.npmjs.com/package/prettier) an opinionated code formatter
- [Vite](https://vitejs.dev/guide/) for Vue
- [Tailwindcss](https://tailwindcss.com/docs/installation), only use this one as CSS framework
- [js-api-loader](https://www.npmjs.com/package/@googlemaps/js-api-loader), Google Maps JavaScript API Loader
- [Lodash](https://lodash.com/docs/4.17.15)
- [moment](https://www.npmjs.com/package/moment)

## Env (OPTIONAL):
- Copy file `.env.example` to `.env`. If you don't do it, the application will run with default env:
  - PORT: 8888
  - VITE_GOOGLE_API: <empty>
- `VITE_GOOGLE_API`: Need to create an API key for an account that already has a payment method. This field can be left blank, but when viewing the map it will be limited to the developer version

## Mock data:
- `src/data`

## Run dev
- USING `yarn` : 
  - `yarn install`
  - `yarn run dev`

## Run production (DOCKER)
- Using `docker compose`:
  - `docker-compose up -d --build`

## List of Things Done
- Layout component: (`src/components/layout`) (1 hour)
- Util components: (`src/components/utils`) (4 hours)
  - `Button`
  - `Card`
  - `Dialog`
  - `GoogleMap`
  - `Textarea`
- Page: (`src/pages/home`) (0.5 hour)
  - `Home`
- Home components: (`src/components/home`) (6 hours)
  - `GoalDialog`
  - `PipeInformation`
  - `PipeMapDailog`
  - `SectionCards`: 
    - `GoalCard`
    - `PipeMapCard`
    - `WhatUpCard`
- Init Dockerfile, docker compose (0.5 hour)
- Readme, create git repository (0.5 hour)

## Working time: `12.5 hours`