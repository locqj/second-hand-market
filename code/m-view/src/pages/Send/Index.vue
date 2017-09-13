<template>
  <div class="container-header">
      <Header title="发布" url="/index"></Header>
      <div class="form">
        <mt-field label="标题" placeholder="请描述你的物品" type="text" v-model="goods.title_text"></mt-field>
        <mt-field label="详细" placeholder="介绍你的物品" type="textarea" rows="4" v-modal="goods.introduction"></mt-field>
        <mt-cell class="upload-title" title="上传物品图片"></mt-cell>
        <Uploads></Uploads>
      </div>
      <div class="price"></div>
      <mt-field label="原价" placeholder="" type="number" v-model="goods.pre_price"></mt-field>
      <mt-field label="发布价格" placeholder="" type="number" v-model="goods.price"></mt-field>
      <mt-radio
        title="是否邮费"
        v-model="ispostage"
        :options="[{
            label: '选项A',
            ispostage: true,
            },
            {
            label: '选项B',
            ispostage: false,
            }]"
        align='right'
        >
      </mt-radio>
      <mt-field label="邮费" placeholder="" type="text" v-model="goods.postage" v-if="ispostage.ispostage"></mt-field>
      <mt-tabbar fixed>
        <mt-button size="large" type="danger" @click="send()">发布旧物</mt-button>
      </mt-tabbar>
  </div>
</template>
<script>
  import Header from '@/components/Header.vue'
  import Uploads from '@/components/Uploads/Index.vue'
  import { Toast, Field, Radio } from 'mint-ui';

  export default {
    name: '',
    data () {
      return {
        ispostage: '',
        dispostage: '',
        goods: {
          title_text: '',
          introduction: '',
          pre_price: '',
          price: '',
          postage: '',
          ispostage: ''
        }
      }
    },
    methods:{
      send () {
        if (!this.goods.title_text) {
          Toast({
            message: '物品标题不得为空',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.goods.introduction) {
          Toast({
            message: '物品描述不得为空',
            iconClass: 'iconfont icon-cuowu'
          })
        }  else if (!this.goods.price) {
          Toast({
            message: '填写心水价格',
            iconClass: 'iconfont icon-cuowu'
          })
        } else {
          /*send axios*/
        }
      }
    },
    components: {
      Header,
      Uploads
    }
  }
</script>
<style lang='scss' scoped>
  @import '../../assets/css/color.scss';
  .image-list{
    width: 100%;
    background-color: #f8f8f8;
    padding-bottom: 5%;
    .list-img{
      margin: 0 auto;

      img{
        padding: 5% 37.5% 0 37.5%;
        width: 22%;
      }
      span{
        margin-top: 5%;
        display: block;
        text-align: center;
        font-size: $fontSize3
      }
    }
  }
</style>