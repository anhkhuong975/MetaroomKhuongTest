<script>
export default {
  name: "Card",
};
</script>

<template>
  <div class="min-w-56 shadow rounded flex flex-col justify-between gap-3">
    <div class="space-y-3 flex-1">
      <!--      region header-->
      <div v-if="$slots.header" class="w-full">
        <slot name="header"></slot>
      </div>
      <!--      endregion header-->

      <!--      region content-->
      <div class="h-full"><slot></slot></div>

      <!--      endregion content-->
    </div>

    <!--    region footer-->
    <div v-if="$slots.footer">
      <slot name="footer"></slot>
    </div>
    <!--    endregion footer-->
  </div>
</template>

<style scoped></style>
