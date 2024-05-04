<template>
  <Dialog :is-open="isOpen" @close="isOpen = false" animation="up">
    <div class="relative h-full">
      <div
        class="absolute h-full w-full top-0 left-0 bg-[url('/images/pipe-bg-card.jpg')] bg-cover bg-opacity-50 blur"
      ></div>
      <div
        class="sticky bg-white bg-opacity-75 top-0 left-0 flex flex-wrap-reverse gap-6 justify-center p-6 md:justify-between"
      >
        <!--region list task-->
        <div
          class="flex flex-wrap gap-3 justify-between md:justify-start flex-1"
        >
          <Card
            v-for="(goal, index) in goals"
            :key="index"
            class="w-full md:w-40 transition-all cursor-pointer p-3 bg-white"
            :class="
              goalIdSelected === goal.id
                ? 'ring-1 ring-gray-900'
                : 'hover:ring-1 hover:ring-gray-500'
            "
            @click="() => this.selectGoal(goal.id)"
          >
            <!--region header, footer-->
            <template #header>
              <div class="flex gap-1 justify-between">
                <b class="truncate">{{ goal.title }}</b>
                <Button
                  variant="ghost"
                  class="p-0 border-none text-gray-300"
                  disabled
                  ><EllipsisVertical size="1rem"
                /></Button>
              </div>
            </template>
            <template #footer>
              <div
                class="text-end text-xs flex items-center gap-1 justify-end border-t pt-3 border-dashed"
              >
                <TrendingUp
                  :size="'1rem'"
                  class="text-green-500 rounded-full bg-green-100"
                />
                <div>{{ moment(goal.date).format("MMMM YYYY") }}</div>
              </div>
            </template>
            <!--endregion header, footer-->

            <!--region goal content-->
            <div class="space-y-3 text-xs">
              <b>Well achieved</b>
              <p
                v-if="!goal.achievements?.length"
                class="text-xs p-6 m-auto text-gray-300"
              >
                There are no any records
              </p>
              <ul class="space-y-2">
                <li
                  v-for="(ac, acIndex) in goal.achievements || []"
                  :key="`${index}_${acIndex}`"
                >
                  <div class="flex gap-1 items-center">
                    <TrendingUp
                      :size="'1rem'"
                      class="text-green-500 rounded-full bg-green-100"
                    />
                    <div>
                      <b>+{{ ac.no }} </b>
                      <span class="text-gray-500">
                        {{ goalDurationLabel }}</span
                      >
                    </div>
                  </div>
                </li>
              </ul>
            </div>
            <!--endregion goal content-->
          </Card>
        </div>
        <!--endregion list task-->

        <!--region task information-->
        <div class="min-w-64 space-y-3 flex-1 md:flex-none">
          <PipeInformation @back="closeDialog" :information="information" />
        </div>
        <!--endregion task information-->
      </div>
    </div>
  </Dialog>
</template>

<script>
import Dialog from "../../utils/dialog/Dialog.vue";
import Card from "../../utils/card/Card.vue";
import { GoalMockData } from "../../../data/goal-mock.data.js";
import Button from "../../utils/button/Button.vue";
import Textarea from "../../utils/textarea/Textarea.vue";
import { EllipsisVertical, TrendingUp } from "lucide-vue-next";
import { InformationMockData } from "../../../data/information-mock.data.js";
import moment from "moment";
import PipeInformation from "../pipe-information/PipeInformation.vue";

const GOAL_DURATION_LABEL = " last three years";

export default {
  name: "GoalDialog",
  computed: {
    moment() {
      return moment;
    },
    information() {
      const goal = this.goals.find((o) => o.id === this.goalIdSelected);
      if (!goal) {
        return InformationMockData;
      }
      return (
        goal.description +
        "\n" +
        goal.achievements
          .map((line) => `+ ${line.no}${this.goalDurationLabel}`)
          .join("\n")
      );
    },
  },
  components: {
    PipeInformation,
    Dialog,
    Card,
    Button,
    Textarea,
    TrendingUp,
    EllipsisVertical,
  },
  props: {
    isOpen: {
      type: Boolean,
      required: false,
      defaultValue: false,
    },
  },
  data() {
    return {
      goalDurationLabel: GOAL_DURATION_LABEL,
      goals: GoalMockData,
      goalIdSelected: "",
    };
  },
  methods: {
    closeDialog() {
      this.$emit("close");
    },
    selectGoal(id) {
      if (id === this.goalIdSelected) {
        this.goalIdSelected = "";
      } else {
        this.goalIdSelected = id;
      }
    },
  },
};
</script>
