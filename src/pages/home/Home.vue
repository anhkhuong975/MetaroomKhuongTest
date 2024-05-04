<template>
  <Layout class="h-screen flex flex-col items-center justify-center">
    <div>
      <div
        class="flex flex-wrap bg-center bg-no-repeat bg-cover h-[75vh] md:h-96 bg-[url('/images/pipe-bg-card.jpg')] text-transparent bg-clip-content"
      >
        <PipeMapCard @click="isOpenPipeMapDialog = true" />
        <WhatUpCard />
        <GoalCard @click="isOpenGoalDialog = true" />
      </div>
    </div>
  </Layout>

  <!--region goal dialog-->
  <GoalDialog
    :is-open="isOpenGoalDialog"
    @close="isOpenGoalDialog = false"
    animation="up"
  >
    Dialog content
  </GoalDialog>
  <!--endregion goal dialog-->

  <!--region pipe map dialog-->
  <PipeMapDialog
    :is-open="isOpenPipeMapDialog"
    @close="isOpenPipeMapDialog = false"
  />
  <!--endregion pipe map dialog-->
</template>

<script>
import Layout from "../../components/layout/Layout.vue";
import Card from "../../components/utils/card/Card.vue";
import GoalDialog from "../../components/home/goal-dialog/GoalDialog.vue";
import PipeMapDialog from "../../components/home/pipe-map-dialog/PipeMapDialog.vue";
import PipeMapCard from "../../components/home/section-cards/PipeMapCard.vue";
import WhatUpCard from "../../components/home/section-cards/WhatUpCard.vue";
import GoalCard from "../../components/home/section-cards/GoalCard.vue";

export default {
  name: "Home",
  components: {
    PipeMapCard,
    WhatUpCard,
    GoalCard,
    PipeMapDialog,
    Card,
    Layout,
    GoalDialog,
  },
  data() {
    return {
      isOpenGoalDialog: false,
      isOpenPipeMapDialog: false,
    };
  },
};
</script>

<style scoped lang="scss"></style>
