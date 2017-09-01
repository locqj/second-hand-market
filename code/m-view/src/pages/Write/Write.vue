<template>
  <div class="box">
    <div class="container">
      <mt-field label="标题" placeholder="请输入文章标题" v-model="title"></mt-field>
    </div>
    <div class="container content">
      <vue-editor v-model="content" placeholder="请输入文章内容"></vue-editor>
    </div>
    <div class="buttons container">
      <mt-button size="normal" type="primary" @click="public">发表文章</mt-button>
      <mt-button size="normal" type="default" @click="save">保存</mt-button>
    </div>
  </div>
</template>

<script>
  import { VueEditor } from 'vue2-editor'
  export default {
    name: 'write',
    data () {
      return {
        title: '',
        content: '',
        userInfo: []
      }
    },
    created () {
      const userInfo = JSON.parse(window.localStorage.getItem('userInfo'))
      if (!userInfo) {
        this.$router.push({path: '/login'})
      } else {
        this.$http.get(`http://localhost:3000/user/${userInfo[0].id}`).then((res) => {
          this.userInfo = res.data
          if (res.data.unpublic.content) {
            this.title = res.data.unpublic.title
            this.content = res.data.unpublic.content
          }
        })
      }
    },
    methods: {
      public () {
        this.$http.put(`http://localhost:3000/user/${this.userInfo.id}`, {
          ...this.userInfo,
          unpublic: {}
        }).then((res) => {
          this.$router.push({path: '/my'})
        })
        const data = {
          slug: 'b3813b6ae4fd',
          first_shared_at: '2017-04-30T22:25:03.000+08:00',
          list_image_url: 'http://upload-images.jianshu.io/upload_images/5856787-a0d9cf1c653f1d62',
          commentable: true,
          views_count: 0,
          public_comments_count: 0,
          total_rewards_count: 0,
          likes_count: 0
        }
        data.title = this.title
        data.content = this.content
        data.first_shared_at = Date.now()
        data.user = {
          slug: 'e622c8a36b2c',
          avatar: '//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/180/h/180'
        }
        data.user.id = this.userInfo.id
        data.user.nickname = this.userInfo.username
        this.$http.post('http://localhost:3000/articles', data).then(function (res) {
          console.log(res.data)
        })
      },
      save () {
        this.$http.put(`http://localhost:3000/user/${this.userInfo.id}`, {
          ...this.userInfo,
          unpublic: {
            title: this.title,
            content: this.content
          }
        }).then((res) => {
          this.$router.push({path: '/my'})
        })
      }
    },
    components: {
      VueEditor
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .container:first-child{
    margin-top: 10px;
  }
  .content{
    margin-top: 10px;
  }
  .buttons{
    margin-top: 20px;
    text-align: right;
    button{
      margin-left: 15px;
    }
  }
</style>
