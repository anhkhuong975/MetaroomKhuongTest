<template>
  <textarea
    :id="id"
    :rows="rows"
    :disabled="disabled"
    :class="computedClass"
    :placeholder="placeholder"
    :value="value"
    @input="$emit('input', $event.target.value)"
  ></textarea>
</template>

<script>
export default {
  name: "Textarea",
  props: {
    id: {
      type: String,
      default: "message",
    },
    rows: {
      type: [String, Number],
      default: "4",
    },
    disabled: {
      type: Boolean,
      default: true,
    },
    placeholder: {
      type: String,
      default: "Write your thoughts here...",
    },
    value: {
      type: String,
      default: "",
    },
  },
  computed: {
    computedClass() {
      return [
        "block",
        "p-2.5",
        "w-full",
        "text-sm",
        "text-gray-900",
        "bg-gray-100",
        "rounded-lg",
        "border-gray-300",
        "ring-0",
        "focus:ring-0",
      ];
    },
  },
};
</script>

<style scoped></style>
