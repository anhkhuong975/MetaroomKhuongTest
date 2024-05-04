<template>
  <div>
    <slot />
  </div>
</template>

<script>
export default {
  name: "GoogleMapProvider",
  props: {
    map: Object,
    loader: Object,
  },
  provide() {
    return {
      map: this.map,
      loader: this.loader,
    };
  },
};
</script>
