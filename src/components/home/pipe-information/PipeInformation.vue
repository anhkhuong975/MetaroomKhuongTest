<template>
  <div>
    <Button
      class="w-full"
      variant="outline"
      type="button"
      @click="handleClickBack"
      >BACK</Button
    >
  </div>
  <div>
    <Textarea
      class="min-h-full"
      id="message"
      rows="16"
      disabled
      placeholder="Information..."
      :value="information"
    ></Textarea>
  </div>
</template>

<script>
import Button from "../../utils/button/Button.vue";
import Textarea from "../../utils/textarea/Textarea.vue";
export default {
  components: { Button, Textarea },
  emits: ["back"],
  props: {
    information: {
      type: String,
      required: false,
      default: "",
    },
  },
  methods: {
    handleClickBack() {
      console.log("hello");
      this.$emit("back");
    },
  },
};
</script>
