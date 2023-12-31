import Vue from 'vue'
import Vuex from 'vuex'
// import AccountReq from '../../api/accountReq';

import state from './state';
import getters from './getters';
import mutations from './mutations';
import actions from './actions';

Vue.use(Vuex)

export default new Vuex.Store({
  state,
  getters,
  mutations,
  actions,
})
