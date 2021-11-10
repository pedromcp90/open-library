import $ from 'jquery';
window.$ = window.jQuery = $;
import Cookies from '../themes/argon/vendor/js-cookie/js.cookie.js'
window.Cookies = Cookies;
import Pluralize from '../vendor/pluralize';
window.Pluralize = Pluralize;
import DataTable from '../themes/argon/vendor/datatables.net/js/jquery.dataTables.min.js';
window.DataTable = DataTable;

require('../themes/argon/vendor/datatables.net-bs4/js/dataTables.bootstrap4.min.js')
require('../themes/argon/vendor/datatables.net-select/js/dataTables.select.min.js')
require('../themes/argon/vendor/datatables.net-select-bs4/js/select.bootstrap4.min.js')
require('../themes/argon/vendor/datatables.net-buttons/js/dataTables.buttons.min.js')
require('../themes/argon/vendor/datatables.net-buttons-bs4/js/buttons.bootstrap4.min.js')
require('../themes/argon/vendor/datatables.net-responsive-bs4/js/responsive.bootstrap4.min.js')
require('../themes/argon/vendor/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js')
require('./bootstrap');
require('./main')
