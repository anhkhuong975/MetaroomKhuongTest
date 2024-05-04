# Basic UI Development for Pipe Management Company Landing Page 
To create an interactive landing page for a pipe management company with three main sections: Map, What's Up, and Goal. The goal is to provide a basic UI that can be easily adjusted later once the official design is completed.

## LIVE DEMO:
- Built by Docker compose (on my VPS): https://metaroom.cookcookie.site/
- Built by Vercel provider: https://metaroom-khuong-test.vercel.app/

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
- `VITE_GOOGLE_API`: Need to create an API key for an account that already has a payment method. This field can be left blank, but when viewing the map it will be limited to the developer version (maybe show the error message: `This page can't load Google Maps correctly.`)

## Mock data:
- `src/data`

## Run dev
- USING `yarn` : 
  - `yarn install`
  - `yarn run dev`
  - PORT DEFAULT: `8888`

## Run production (PORT: 8080)
- Using `docker compose`:
  - `docker-compose up -d --build`
  - PORT: `8080`

## List of Things Done
- Init source, layout: (1.5 hour)
- Util components: (`src/components/utils`)
  - `Button` (0.5 hour)
  - `Card` (0.5 hour)
  - `Dialog` (0.75 hour)
  - `GoogleMap` (2 hours)
  - `Textarea` (0.5 hour)
- Page: (`src/pages/home`) 
  - `Home` (1 hour)
- Home components: (`src/components/home`)
  - `GoalDialog` (2 hours)
  - `PipeInformation` (0.5 hour)
  - `PipeMapDailog` (1 hour)
  - `SectionCards`: 
    - `GoalCard` (0.5 hour)
    - `PipeMapCard` (0.5 hour)
    - `WhatUpCard` (0.25 hour)
- Init Dockerfile, docker compose, deploy (1 hour)
- Readme, create git repository (0.5 hour)

## Working time: `13.5 hours`