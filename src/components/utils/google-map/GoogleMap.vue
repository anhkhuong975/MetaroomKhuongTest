<template>
  <div>
    <div id="map" class="h-96"></div>
    <template v-if="isLoading">
      <div class="relative h-full bg-gray-100">
        <div
          class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2"
        >
          <RotateCw class="animate-spin" />
        </div>
      </div>
    </template>
    <template v-if="!!loader && !!map">
      <GoogleMapProvider :map="map" :loader="loader">
        <slot />
      </GoogleMapProvider>
    </template>
  </div>
</template>

<script>
import GoogleMapProvider from "./GoogleMapProvider.vue";
import { Loader } from "@googlemaps/js-api-loader";
import { RotateCw } from "lucide-vue-next";

export default {
  name: "GoogleMap",
  props: {
    mapConfig: Object,
    apiKey: String,
    default: import.meta.env.VUE_APP_GOOGLE_API || "",
  },
  components: {
    GoogleMapProvider,
    RotateCw,
  },
  data() {
    return {
      map: null,
      loader: null,
      isLoading: false,
    };
  },
  mounted() {
    this.initializeMap();
  },
  methods: {
    initializeMap() {
      const mapContainer = this.$el.querySelector("#map");
      this.loader = new Loader({
        apiKey: "",
        version: "weekly",
        libraries: ["places"],
      });

      this.isLoading = true;
      this.loader
        .importLibrary("maps")
        .then(({ Map }) => {
          this.map = new Map(mapContainer, {
            ...this.mapConfig,
            mapId: new Date().getTime() + "",
          });
        })
        .finally(() => {
          this.isLoading = false;
        });
    },
  },
};
</script>

<style scoped></style>
