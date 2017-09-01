<template>
  <header class="person-info clearfix">
    <div class="avatar pull-left" @click="showCursor">
      <img src="//upload.jianshu.io/users/upload_avatars/2758117/247d868bf5d6.jpeg?imageMogr2/auto-orient/strip|imageView2/1/w/180/h/180" alt="">
    </div>
    <div class="author-info pull-left">
      <div class="name">{{userInfo.username}}</div>
      <div class="description">
        写了 {{userInfo.total_word?userInfo.total_word:0}} 字,
        获得了 {{userInfo.total_like?userInfo.total_like:0}} 个喜欢
      </div>
      <div class="intros">
        <span>
          <span class="intros-content" v-if="!edit">
            {{userInfo.intros?userInfo.intros:'编辑签名'}}
          </span>
          <input type="text" v-model="userInfo.intros" v-if="edit">
        </span>
        <a href="javascript:void(0)" class="edit" @click="editing" v-if="!edit">编辑</a>
        <mt-button type="primary" id="save" size="small" v-if="edit" @click="save">保存</mt-button>
        <mt-button id="cancel" size="small" v-if="edit" @click="cancel">取消</mt-button>
      </div>
    </div>
    <input type="file" accept="image/*;capture=camera" ref="isFile" style="display: none;">
    <mt-actionsheet
      :actions="actions"
      v-model="sheetVisible">
    </mt-actionsheet>
  </header>
</template>

<script>
  export default {
    name: '',
    data () {
      const _this = this
      return {
        edit: false,
        intros: '',
        sheetVisible: false,
        actions: [
          {
            name: '更换头像',
            method () {
              _this.$refs.isFile.click()
            }
          }
        ]
      }
    },
    props: ['userInfo'],
    methods: {
      showCursor () {
        this.sheetVisible = true
      },
      editing () {
        this.intros = this.userInfo.intros
        this.edit = true
      },
      save () {
        this.$http.put(`http://localhost:3000/user/${this.userInfo.id}`, {
          ...this.userInfo
        }).then((res) => {
          console.log(res)
        })
        this.edit = false
      },
      cancel () {
        this.userInfo.intros = this.intros
        this.edit = false
      }
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .person-info{
    padding: 20px 0 15px;
    position: relative;
    .intros-content{
      display: inline-block;
      width: 160px;
      overflow: hidden;
      text-overflow:ellipsis;
      white-space: nowrap;
    }
    input{
      width: 120px;
      height: 28px;
      border: 1px solid #ddd;
      border-radius: 3px;
      padding: 3px 10px;
      outline:none;
    }
    .edit{
      color: $linkColor;
      text-decoration: none;
      position: relative;
      top: -2px;
    }
    .avatar{

      img{
        width: 72px;
        height: 72px;
        border: 1px solid #f0f0f0;
        border-radius: 50%;
      }
    }
    .author-info{
      margin-left: 10px;

      div{
        margin-bottom: 10px;
      }

      .name{
        font-size: 20px;
        font-weight: bold;
        color: $blackColor;
      }

      .description{
        color: $fontColor3;
      }

      .intros{
        color: $fontColor1;
      }
    }
  }
</style>
