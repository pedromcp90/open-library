import $ from 'jquery';
window.$ = window.jQuery = $;
import Cookies from '../themes/argon/vendor/js-cookie/js.cookie.js'
window.Cookies = Cookies;
import Pluralize from '../vendor/pluralize';
window.Pluralize = Pluralize;
window.DataTable = require( 'datatables.net' );

require('chosen-js')
require('datatables.net-select')
require('datatables.net-select-bs4')
require('datatables.net-buttons')
require('datatables.net-buttons-bs4')
require('datatables.net-responsive')
require('datatables.net-responsive-bs4')
require('../themes/argon/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')
require('./bootstrap');
require('./main')
