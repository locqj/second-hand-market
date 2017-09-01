<template>
    <div class="page-search">
      <mt-search
          autofocus
          v-model="value"
          :result="filterResult">
      </mt-search>
    </div>
</template>
<script>
export default {
  name: 'page-search',
  data () {
    return {
      value: '',
      // 默认数据
      defaultResult: [
        'Banana',
        'Orange',
        'Durian',
        'Lemon',
        'Peach',
        'Cherry',
        'Berry',
        'Core',
        'Fig',
        'Haw',
        'Melon',
        'Plum',
        'Pear',
        'Peanut',
        'Other',
        'Apple'
      ]
    }
  },
  computed: {
    filterResult () {
      return this.defaultResult.filter(value => new RegExp(this.value, 'i').test(value))
    }
  }
}
</script>  
<style lang='scss' scoped>
  @import "../../assets/css/color.scss";
  article{
    background: url("//cdn2.jianshu.io/assets/mobile/index_phone-e47b04f8b57ad885770ec579c4341259.png") no-repeat right -48px;
    background-size: 128px auto;
    color: $fontColor1;
    padding: 15px;
  }
  .mint-search{
    height: auto;
    position: relative;
    z-index: 0;
  }
</style>
