<template>
  <div class="container-header">
    <Header title="我的" url="/index"></Header>
    <div class="img_head">
      <div class="head_left"><img :src="userInfo.img_head" alt=""></div>
      <div class="head_right">
        <div class="users">{{ userInfo.users.name }}</div>
        <mt-button type="primary" size="small" @click="changeimg">修改头像</mt-button>
        <mt-button type="primary" size="small" @click="changeinfo">{{ updatebtn }}</mt-button>

      </div>
    </div>
    <Uploads :url="'/test/api/uploadheadimg/1'" v-if="this.change"></Uploads>
    <mt-field label="学校" v-model="userInfo.school.name" v-bind:readonly="isReadonly" :disableClear="isReadonly"></mt-field>
    <mt-field label="学院" v-model="userInfo.department.name" v-bind:readonly="isReadonly" :disableClear="isReadonly"></mt-field>
    <mt-field label="性别" v-model="userInfo.sexch" v-bind:readonly="isReadonly" :disableClear="isReadonly"></mt-field>
    <mt-field label="电话" v-model="userInfo.phone" v-bind:readonly="isReadonly" :disableClear="isReadonly"></mt-field>
    <mt-field label="入学年份" v-model="userInfo.entry_year" v-bind:readonly="isReadonly" :disableClear="isReadonly"></mt-field>
    <mt-field label="身份验证情况" v-model="userInfo.verity" readonly></mt-field>
    <mt-radio v-model="userInfo.sex" :options="this.sexoption"></mt-radio>

  </div>
</template>

<script>
  import { Cell, Toast, Radio } from 'mint-ui';
  import Header from '@/components/Header.vue'
  import Uploads from '@/components/Uploads/Index.vue' 
  export default {
    name: 'my',
    data () {
      return {
        userInfo: {},
        articles: [],
        change: false,
        isReadonly: true,
        updatebtn: '修改',
      }
    },
    created() {
      this.sexoption = [
        {
          label: '男',
          value: 1,
        },
        {
          label: '女',
          value: 2
        },
      ]
    },
    methods: {
      changeinfo() {
        if (this.isReadonly) {
          this.isReadonly = false
          this.updatebtn = '保存'
          /*发ajax*/
        } else {
          this.isReadonly = true
          this.updatebtn = '修改'
        }
      },
      changeimg() {
        if (this.change) {
          this.change = false
        } else {
          this.change = true
        }
      }
    },
    created () {
      this.userInfo = this.$store.state.mutations.user
      this.userInfo = JSON.parse(this.userInfo)
      if (!this.userInfo.img_head) {
        this.userInfo.img_head = "//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/180/h/180"
      } else {
        this.userInfo.img_head = '/test/storage/'+this.userInfo.img_head
      }
      this.userInfo.sex === 1 ? this.userInfo.sexch = '男' : this.userInfo.sexch = '女'
      this.userInfo.status_school === 0 ? this.userInfo.verity = '否' : this.userInfo.verity = '是'
    },
    components: {
      Header,
      Uploads
    }
  }
</script>

<style lang='scss' scoped>
  .img_head{
    width: 100%;
    height: 120px;
    margin-top: 13%;
    margin-bottom: 2%;
    .head_left {
      width: 45%;
      float: left;
      margin-top: 3%;
      margin-left: 5%;
      img {
        width: 65px;
        height: 65px;
        border-radius: 50%;

      }
    }
    .head_right {
      width: 50%;
      float: right;
      margin-top: 5%;
      text-align: center;
      .users{
        margin: 4% 0 2% 0;
        font-size: 17px;
        font-weight: bold;
      }
    }
  }
</style>
