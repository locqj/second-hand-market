<template>
  <div class="register container">
    <h3 class="text-center">完善个人信息</h3>
    <mt-cell class="upload-title" title="上传头像">
      <span></span>
    </mt-cell>
    <Uploads></Uploads>
    <div class="form-field">
      <p>
        <i class="iconfont icon-shouji"></i>
        <input type="text" placeholder="请输入学校" v-model="userInfo.school">
      </p>

      <p>
        <i class="iconfont icon-shouji"></i>
        <input type="text" placeholder="请输入学院" v-model="userInfo.department">
      </p>
      <p>
        <i class="iconfont icon-shouji"></i>
        <input type="number" placeholder="请输入学年份" v-model="userInfo.entry_year">
      </p>
      <p>
        <mt-button class="input-btn" @click.native="open('birthday')" size="large">
          <span>
            <i class="iconfont icon-shouji"></i>
            <span v-if="!userInfo.birthday">选择出生日期</span>
            <span v-else>{{ showbirthday }}</span>
          </span>
        </mt-button>
        <mt-datetime-picker
          ref="birthday"
          type="date"
          v-model="birthday"
          :startDate="startDate"
          :endDate="endDate"
          year-format="{value} 年"
          month-format="{value} 月"
          date-format="{value} 日"
          @confirm="handleChange">
        </mt-datetime-picker>
      </p>
    </div>
    <mt-button class="button-next" type="primary" size="large" @click="register">下一步</mt-button>

  </div>
</template>

<script>
  import Uploads from '@/components/Uploads/Index.vue'
  import { Toast } from 'mint-ui';
  export default {
    name: '',
    data () {
      return {
        birthday: new Date(),
        showbirthday: '',
        startDate: new Date('1950-1-1'),
        endDate: new Date(),
        userInfo: {
          school: '',
          department: '',
          birthday: '',
          entry_year: ''

        }
      }
    },
    methods: {
      open (picker) {
        this.$refs[picker].open()
      },
      verify () {
        Toast({
          message: '已发送',
          position: 'bottom'
        })
      },
      splitbirthday () {
        var birthday = this.birthday.split('T')
        alert(birthday[0])
      },
      handleChange (value) {
        this.userInfo.birthday = this.birthday
        let birthday = this.userInfo.birthday.toString().split(' ')
        let date = birthday[0] + ' ' + birthday[1] + ' ' + birthday[2] + ' ' + birthday[3]
        this.showbirthday = date
        Toast({
          message: '出生日期：' + date,
          position: 'bottom'
        })
      },
      register () {
        if (!this.userInfo.school) {
          Toast({
            message: '请输入学校',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.department) { 
          Toast({
            message: '请输入学院',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.entry_year) { 
          Toast({
            message: '请输入入学年份',
            iconClass: 'iconfont icon-cuowu'
          })
        } else if (!this.userInfo.birthday) { 
          Toast({
            message: '请选择生日',
            iconClass: 'iconfont icon-cuowu'
          })
        } else {
          this.$http.get(`http://localhost:3000/user?phone=${this.userInfo.phone}`)
            .then(function (res) {
              if (res.data[0]) {
                Toast({
                  message: '该手机已被注册',
                  iconClass: 'iconfont icon-cuowu'
                })
                return
              } else {
                this.$http.post('http://localhost:3000/user', this.userInfo)
                  .then((res) => {
                    Toast({
                      message: '注册成功',
                      iconClass: 'iconfont icon-zhengque'
                    })
                    const storage = window.localStorage
                    const userInfo = res.data
                    storage.setItem('userInfo', JSON.stringify(userInfo))
                    this.$router.push({ path: 'home' })
                  })
              }
            })
        }
      }
    },
    components: {
      Uploads
    }
  }
</script>

<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  .register{
    .close{
      position: absolute;
      right: 15px;
      top: 20px;
      font-size: 32px;
      color:#969696;
    }
    .input-btn{
      margin-top: 0px;
      border-radius: 0px;
      box-shadow: 0 0 0px #b8bbbf;
      width: 100%;
      height: 48px;
      margin-bottom: 0;
      text-align: left;
      padding: 2px 12px 4px 42px;
      border:1px solid #C8C8C8;
      border-bottom:none;
      vertical-align: middle;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      font-size: $fontSize2;
      background-color: #F5F5F5;
      outline: none;
    }
    h3{
      margin-top: 70px;
      margin-bottom: 15px;
      
      font-size: $fontSize3;
      color: $blackColor;
    }
    .upload-title{
      border: 2px soild #c8c8c8;
      background-color: #F5F5F5;
    }
    .form-field{
      margin-top: 10px;

      p{
        position: relative;
      }

      p img{
        position: absolute;
        right:1px;
        top:1px;
        height: 46px;
      }
      p .verify{
        margin-top: 0px;
        float: right;
        position: absolute;
        font-size: 14px;
        right:1px;
        top:1px;
        height: 46px;
        width: 30%
      }
      p i{
        position: absolute;
        top: 15px;
        left: 14px;
        font-size: 18px;
        color: #969696;
      }
      p:first-child input{
        border-radius: 4px 4px 0 0;
      }

      p:last-child{
        border-radius: 0 0 4px 4px;
        border-bottom: 1px solid #C8C8C8;
      }
    }
    input{
      width: 100%;
      height: 48px;
      margin-bottom: 0;
      padding: 2px 12px 4px 42px;
      border:1px solid #C8C8C8;
      border-bottom:none;
      vertical-align: middle;
      -webkit-box-sizing: border-box;
      -moz-box-sizing: border-box;
      box-sizing: border-box;
      font-size: $fontSize2;
      background-color: #F5F5F5;
      outline: none;
    }
    .button-next{
      bottom: 17%; margin: 0px; position: fixed; width: 92%; z-index: 10 ! important;
    }
  }
</style>

