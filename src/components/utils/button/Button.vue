<template>
  <button
    :class="computedClass"
    type="button"
    :disabled="disabled"
    v-bind="{ ...$props, ...$attrs }"
  >
    <slot></slot>
  </button>
</template>

<script>
export default {
  name: "Button",
  props: {
    variant: {
      type: String,
      default: "primary",
      validator: (value) =>
        ["primary", "secondary", "outline", "ghost"].includes(value),
    },
    disabled: {
      type: Boolean,
      default: false,
    },
  },
  computed: {
    computedClass() {
      let cl = "";
      switch (this.variant) {
        case "secondary":
          cl =
            "inline-block rounded bg-primary-accent-200 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-primary-700 transition duration-150 ease-in-out hover:bg-primary-accent-200 focus:bg-primary-accent-200 focus:outline-none focus:ring-0 active:bg-primary-accent-200 motion-reduce:transition-none dark:bg-primary-400 dark:hover:bg-primary-400 dark:focus:bg-primary-400 dark:active:bg-primary-400";
          break;

        case "outline":
          cl =
            "hover:shadow bg-white border inline-block rounded px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-primary-700 transition duration-150 ease-in-out hover:bg-primary-accent-200 focus:bg-primary-accent-200 focus:outline-none focus:ring-0 active:bg-primary-accent-200 motion-reduce:transition-none dark:bg-primary-400 dark:hover:bg-primary-400 dark:focus:bg-primary-400 dark:active:bg-primary-400";
          break;

        case "ghost":
          cl = "border-none p-1";
          break;

        case "primary":
        default:
          cl =
            "inline-block rounded bg-blue-500 px-6 pb-2 pt-2.5 text-xs font-medium uppercase leading-normal text-white shadow-primary-3 transition duration-150 ease-in-out hover:bg-primary-accent-300 hover:shadow-primary-2 focus:bg-primary-accent-300 focus:shadow-primary-2 focus:outline-none focus:ring-0 active:bg-primary-600 active:shadow-primary-2 motion-reduce:transition-none dark:shadow-black/30 dark:hover:shadow-dark-strong dark:focus:shadow-dark-strong dark:active:shadow-dark-strong";
          break;
      }
      return cl;
    },
  },
  methods: {},
};
</script>

<style scoped></style>
