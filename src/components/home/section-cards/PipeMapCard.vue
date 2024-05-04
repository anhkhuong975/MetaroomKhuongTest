<template>
  <Card
    class="flex-1 border-8 rounded-none border-white shadow-none text-pink-500 p-0 cursor-pointer"
  >
    <div class="relative h-full w-full group overflow-hidden">
      <div
        class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 font-bold text-xl"
      >
        <div class="p-2 border-dashed border rounded">MAP</div>
      </div>
      <div
        class="absolute bg-purple-500 w-full h-full translate-y-full bottom-0 transition-all group-hover:bottom-full flex gap-3 flex-col justify-between"
        @click="this.$emit('click')"
        title="List of goals set for the current year"
      >
        <div class="space-y-3">
          <div class="text-white font-bold text-lg md:text-xl px-3">
            Everything you need to make any thing you want.
          </div>
          <p class="px-3 text-xs text-white line-clamp-4">
            {{ description }}
          </p>
        </div>

        <img
          src="/images/pipe-card-pipe.jpg"
          alt="pipe"
          loading="lazy"
          class="w-1/2 md:w-5/6 self-end"
        />
      </div>
    </div>
  </Card>
</template>

<script>
import Card from "../../utils/card/Card.vue";
import { InformationMockData } from "../../../data/information-mock.data.js";

export default {
  name: "PipeMapCard",
  components: { Card },
  data() {
    return {
      description: InformationMockData,
    };
  },
};
</script>
