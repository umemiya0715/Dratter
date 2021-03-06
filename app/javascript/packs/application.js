// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Vue from 'vue'
import App from '../app.vue'
import router from '../router/router.js'
import axios from '../plugins/axios.js'
import store from '../store/index.js'
import 'dayjs/locale/ja'
import dayjs from 'dayjs'
import '../css/tailwind.css'
import '../plugins/veevalidate'
import 'remixicon/fonts/remixicon.css'

Vue.config.productionTip = false
Vue.config.devtools = true
Vue.prototype.$axios = axios

dayjs.locale('ja')
Vue.prototype.$dayjs = dayjs

document.addEventListener('DOMContentLoaded', () => {
  const app = new Vue({
    router,
    store,
    render: h => h(App)
  }).$mount()
  document.body.appendChild(app.$el)

  console.log(app)
})

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
