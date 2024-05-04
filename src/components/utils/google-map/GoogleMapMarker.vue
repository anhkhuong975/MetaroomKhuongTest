<template></template>
<script>
export default {
  name: "GoogleMapMarker",
  inject: ["map", "loader"],
  props: {
    position: {
      type: Object,
      required: true,
    },
    title: {
      type: String,
      required: true,
    },
  },
  data() {
    return { marker: null };
  },
  mounted() {
    this.loader.importLibrary("marker").then(({ Marker }) => {
      this.marker = new Marker({
        map: this.map,
        position: this.position,
        title: this.title,
      });
    });
  },
};
</script>
