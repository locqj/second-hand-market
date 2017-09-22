<template>
  <div class="page-picker">
    <h1 class="page-title">Picker</h1>
    <!-- <div class="page-picker-wrapper">
      <mt-picker :slots="dateSlots" @change="onDateChange" :visible-item-count="3"></mt-picker>
    </div>
    <p class="page-picker-desc">在校时间: {{ dateStart }} 至 {{ dateEnd }}</p> -->

     <mt-button size="large" type="danger" @click="request">danger</mt-button>
    <div class="page-picker-wrapper">
      <mt-picker :slots="addressSlots" @change="onAddressChange" :visible-item-count="5"></mt-picker>
    </div>
    <p class="page-picker-desc">地址: {{ addressProvince }} {{ addressCity }}</p>
  </div>
  <!-- <p v-for="(value, index) in address">{{ index }}</p> -->
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
</style>

<script type="text/babel">
  export default {
    data() {
      return {
        address: [],
        dateSlots: [
          {
            flex: 1,
            values: ['2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016'],
            className: 'slot1',
            textAlign: 'right'
          }, {
            divider: true,
            content: '-',
            className: 'slot2'
          }, {
            flex: 1,
            values: ['2002', '2003', '2004', '2005', '2006', '2007', '2008', '2009', '2010', '2011', '2012', '2013', '2014', '2015', '2016'],
            className: 'slot3',
            textAlign: 'left'
          }
        ],
        dateStart: '2002',
        dateEnd: '2002',
        addressSlots: [
          {
            flex: 1,
            values: Object.keys(address),
            className: 'slot1',
            textAlign: 'center'
          }, {
            divider: true,
            content: '-',
            className: 'slot2'
          }, {
            flex: 1,
            values: ['北京'],
            className: 'slot3',
            textAlign: 'center'
          }
        ],
        addressProvince: '北京',
        addressCity: '北京'
      };
    },
    methods: {
      request () {
        this.$http.get('/static/address.json')
          .then(res => {
            this.address = res.data.address
            console.log(res.data.address)
          })
      },
      onDateChange (picker, values) {
        if (values[0] > values[1]) {
          picker.setSlotValue(1, values[0])
        }
        this.dateStart = values[0]
        this.dateEnd = values[1]
      },
      onAddressChange (picker, values) {
        picker.setSlotValues(1, address[values[0]])
        this.addressProvince = values[0]
        this.addressCity = values[1]
      }
    },
    created: function () {
      this.$http.get('/static/address.json')
        .then(res => {
          this.address = res.data.address
           sessionStorage.setItem("demokey", "http://blog.itjeek.com");
          console.log(res.data.address)
        })
    }
  }
</script>
