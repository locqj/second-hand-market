<template>
  <div class="container-header">
      <Header title="发布" url="/index"></Header>
      <div class="form">
        <mt-field label="标题" placeholder="请描述你的物品" type="text" v-model="title"></mt-field>
        <mt-field label="详细" placeholder="介绍你的物品" type="textarea" rows="4" v-modal="introduction"></mt-field>
        <div class="image-list">
         <div class="list-img" v-show="hasPhoto" @click.stop="addPic">
           <img src="../../assets/img/photo.png" />
           <span class="choosephoto">请选择或者拍照上传照片</span>
           <input hidden type="file" accept="image/jpeg,image/jpg,image/png" capture="camera" @change="fileInput" >
         </div>
         <ul class="list-ul" v-show="!hasPhoto">
           <li class="list-li" v-for="(url, index) in imgUrls">
             <div class="list-link" >
              <img :src="url">
             </div>
             <span class="cancleimg" @click='delImage(index)'></span>
           </li>
           <li class="list-li-add">
            <span class="add-img" @click.stop="addPic"></span>
           </li>
         </ul>
        </div>
      </div>
      <div class="price"></div>
      <mt-tabbar fixed v-model="selected" class="footer">
        <mt-button size="large" type="danger">large</mt-button>
      </mt-tabbar>
  </div>
</template>
<script>
  import Header from '@/components/Header.vue'
  export default {
    name: '',
    data () {
      return {
        hasPhoto: true
      }
    },
    components: {
      Header
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