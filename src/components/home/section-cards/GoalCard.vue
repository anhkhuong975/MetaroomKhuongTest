<template>
  <Card
    class="flex-1 border-8 rounded-none border-white shadow-none text-pink-500 p-0 cursor-pointer"
    @click="this.$emit('click')"
  >
    <div class="relative h-full w-full group overflow-hidden">
      <div
        class="absolute top-1/2 left-1/2 -translate-x-1/2 -translate-y-1/2 font-bold text-xl"
      >
        <div class="p-2 border-dashed border rounded uppercase">Goal</div>
      </div>
    </div>
  </Card>
</template>

<script>
import Card from "../../utils/card/Card.vue";

export default {
  name: "GoalCard",
  components: { Card },
};
</script>

<style scoped></style>
