<template>
  <Card
    class="flex-1 border-8 rounded-none border-white shadow-none text-pink-500 p-0 cursor-pointer"
  >
    <div class="relative h-full w-full group overflow-hidden">
      <div
        class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 font-bold text-xl"
      >
        <div
          class="p-2 border-dashed border rounded uppercase whitespace-nowrap"
        >
          What's up
        </div>
      </div>
      <div
        class="absolute bg-purple-500 w-full h-full translate-y-full bottom-0 transition-all group-hover:bottom-full flex flex-col justify-between"
      >
        <div class="m-auto">
          <p class="px-3 text-xs text-white line-clamp-4">
            TODO: Detailed design will be finalized in the next stage.
          </p>
        </div>
      </div>
    </div>
  </Card>
</template>

<script>
import Card from "../../utils/card/Card.vue";

export default {
  name: "WhatUpCard",
  components: { Card },
};
</script>

<style scoped></style>
