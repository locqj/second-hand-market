<template>
  <div class="page-picker">
    <div class="page-picker-wrapper">
      <mt-picker :slots="schoolSlots" @change="onSchoolChange" :visible-item-count="5"></mt-picker>
    </div>
    <p class="note"><span v-if="province_school">[{{ province_school }}-{{ school }}]</span></p>
    <div class="page-picker-wrapper">
      <mt-picker :slots="majorSlots" @change="onMajorChange" :visible-item-count="5"></mt-picker>
    </div>
    <p class="note"><span v-if="province_major">[{{ province_major }}-{{ major }}]</span></p>
  </div>
</template>

<style>
  @component-namespace page {
    @component picker {
      padding: 0 10px 20px;
      @descendent wrapper {
        background-color: #fff;
        text-align: center;
      }
      @descendent desc {
        margin: 10px 0 50px;
      }
      .mint-button {
        margin-top: 15px;
      }
    }
  }
  .note {
    font-size:0.26rem;
    background-color: #f8f8f8;
    text-align: center;
    padding: 2% 0 2% 0;
  }
</style>

<script>
    import { majorList } from './majorList.js'
    import { proSchool } from './schoolList.js'

  export default {
    data() {
      return {
        schoolSlots: [
          {
            flex: 1,
            values: Object.keys(proSchool),
            className: 'slot1',
            textAlign: 'center'
          }, {
            divider: true,
            content: '--',
            className: 'slot2'
          }, {
            flex: 1,
            values: [''],
            className: 'slot3',
            textAlign: 'center'
          }
        ],
        majorSlots: [
          {
            flex: 1,
            values: Object.keys(majorList),
            className: 'slot1',
            textAlign: 'center'
          }, {
            divider: true,
            content: '--',
            className: 'slot2'
          }, {
            flex: 1,
            values: [''],
            className: 'slot3',
            textAlign: 'center'
          }
        ],
        province_school: '',
        school: '',
        province_major: '',
        major: ''
      }
    },
    methods: {
      onSchoolChange (picker, values) {
        picker.setSlotValues(1, proSchool[values[0]])
        this.province_school = values[0]
        this.school = values[1]
      },
      onMajorChange (picker, values) {
        picker.setSlotValues(1, majorList[values[0]])
        this.province_major = values[0]
        this.major = values[1]
      }
    },
    created: function () {
      console.log(Object.keys(majorList))
      }, 
    watch:{
      province_school: function(val, oldval) {
        this.$emit("province_school", val)
        deep:true
      },
      school: function(val, oldval) {
        this.$emit("school", val)
        deep:true
      },
      major: function(val, oldval) {
        this.$emit("major", val)
        deep: true
      }
    }
  }
</script>
