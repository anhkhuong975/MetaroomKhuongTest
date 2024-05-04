<template>
  <transition v-on:enter="enter" v-on:leave="leave">
    <div v-if="isOpen" :class="dialogClasses">
      <div class="bg-white m-6 rounded shadow-md md:max-w-screen-xl">
        <div class="max-h-[80vh] overflow-auto">
          <slot></slot>
        </div>
      </div>
    </div>
  </transition>
</template>

<script>
export default {
  props: {
    isOpen: {
      type: Boolean,
      required: true,
    },
    animation: {
      type: String,
      default: "default",
      validator: (value) => ["default", "up", "left"].includes(value),
    },
  },
  computed: {
    dialogClasses() {
      return {
        "fixed inset-0 z-50 flex items-center justify-center bg-gray-500 bg-opacity-50": true,
        "transition-transform ease-out duration-500":
          this.animation !== "default",
        "transform translate-y-full": this.animation === "up" && this.isOpen,
        "transform translate-x-full": this.animation === "left" && this.isOpen,
      };
    },
  },
  methods: {
    close() {
      this.$emit("close");
    },
    enter(el, done) {
      if (this.animation !== "default") {
        setTimeout(() => {
          el.style.transform = "none";
          done();
        });
      } else {
        done();
      }
    },
    leave(el, done) {
      if (this.animation !== "default") {
        if (this.animation === "up") {
          el.style.transform = "translateY(100%)";
        } else if (this.animation === "left") {
          el.style.transform = "translateX(100%)";
        }
        setTimeout(() => {
          done();
        }, 500);
      } else {
        done();
      }
    },
  },
};
</script>
