import $ from 'jquery';
window.$ = window.jQuery = $;
import Cookies from '../themes/argon/vendor/js-cookie/js.cookie.js'
window.Cookies = Cookies;

require('./bootstrap');
//require('../themes/argon/vendor/bootstrap/dist/js/bootstrap.bundle.min.js')
//require('../themes/argon/vendor/js-cookie/js.cookie.js')
require('../themes/argon/vendor/jquery.scrollbar/jquery.scrollbar.min.js')
require('../themes/argon/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js')
//require('../themes/argon/vendor/chart.js/dist/Chart.min.js')
//require('../themes/argon/vendor/chart.js/dist/Chart.extension.js')
require('../themes/argon/js/argon.js')
require('./main')
