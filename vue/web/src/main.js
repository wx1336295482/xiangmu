import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import pubcss from './assets/css/public.css';
import pubsub from 'pubsub-js';
import { Swipe, SwipeItem, List, Sidebar, SidebarItem, Tab, Tabs, DropdownMenu, DropdownItem, Cell, Switch, Button, Popup, GoodsAction, GoodsActionIcon, GoodsActionButton, SwipeCell, Stepper, SubmitBar } from 'vant';

Vue.config.productionTip = false
Vue.prototype.$pubsub = pubsub

Vue.use(Swipe);
Vue.use(SwipeItem);
Vue.use(List)
Vue.use(Sidebar)
Vue.use(SidebarItem)
Vue.use(Tab)
Vue.use(Tabs)
Vue.use(DropdownMenu)
Vue.use(DropdownItem)
Vue.use(Cell)
Vue.use(Switch)
Vue.use(Button)
Vue.use(Popup)
Vue.use(GoodsAction)
Vue.use(GoodsActionIcon)
Vue.use(GoodsActionButton)
Vue.use(SwipeCell)
Vue.use(Stepper)
Vue.use(SubmitBar)


new Vue({
  router,
  store,
  pubcss,
  render: h => h(App),
}).$mount('#app')
