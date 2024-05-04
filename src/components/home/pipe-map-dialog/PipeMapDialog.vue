<template>
  <Dialog :is-open="isOpen" @close="isOpen = false" animation="left">
    <div class="flex flex-wrap gap-6 justify-center md:justify-between p-6">
      <div class="min-w-64 space-y-3 flex-1 md:flex-none">
        <PipeInformation @back="closeDialog" :information="information" />
      </div>

      <div class="flex flex-wrap gap-3 justify-between md:justify-start flex-1">
        <GoogleMap :map-config="mapConfig" class="w-full min-w-52 md:w-96">
          <GoogleMapMarker
            v-for="(pc, index) in pipeConstructions"
            :position="pc.position"
            :title="pc.title"
            :key="index"
          />
        </GoogleMap>
      </div>
    </div>
  </Dialog>
</template>

<script>
import Dialog from "../../utils/dialog/Dialog.vue";
import PipeInformation from "../pipe-information/PipeInformation.vue";
import { InformationMockData } from "../../../data/information-mock.data.js";
import { GoalMockData } from "../../../data/goal-mock.data.js";
import GoogleMap from "../../utils/google-map/GoogleMap.vue";
import GoogleMapMarker from "../../utils/google-map/GoogleMapMarker.vue";
import { PipeConstructionMockData } from "../../../data/pipe-construction-mock.data.js";
import head from "lodash/head";

export default {
  name: "PipeMapDialog",
  data() {
    return {
      goals: GoalMockData,
      mapConfig: {
        zoom: 8,
        center: head(PipeConstructionMockData)?.position,
      },
      pipeConstructions: PipeConstructionMockData,
    };
  },
  components: { PipeInformation, Dialog, GoogleMap, GoogleMapMarker },
  computed: {
    information() {
      const goal = this.goals.find((o) => o.id === this.goalIdSelected);
      if (!goal) {
        return InformationMockData;
      }
      return goal.title + "\n" + goal.description;
    },
  },
  props: {
    isOpen: {
      type: Boolean,
      required: false,
      defaultValue: false,
    },
  },
  methods: {
    closeDialog() {
      this.$emit("close");
    },
  },
};
</script>
