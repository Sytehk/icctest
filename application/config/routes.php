<?php
defined('BASEPATH') OR exit('No direct script access allowed');

/*
| -------------------------------------------------------------------------
| URI ROUTING
| -------------------------------------------------------------------------
| This file lets you re-map URI requests to specific controller functions.
|
| Typically there is a one-to-one relationship between a URL string
| and its corresponding controller class/method. The segments in a
| URL normally follow this pattern:
|
|	example.com/class/method/id/
|
| In some instances, however, you may want to remap this relationship
| so that a different class/function is called than the one
| corresponding to the URL.
|
| Please see the user guide for complete details:
|
|	https://codeigniter.com/user_guide/general/routing.html
|
| -------------------------------------------------------------------------
| RESERVED ROUTES
| -------------------------------------------------------------------------
|
| There are three reserved routes:
|
|	$route['default_controller'] = 'welcome';
|
| This route indicates which controller class should be loaded if the
| URI contains no data. In the above example, the "welcome" class
| would be loaded.
|
|	$route['404_override'] = 'errors/page_missing';
|
| This route will tell the Router which controller/method to use if those
| provided in the URL cannot be matched to a valid route.
|
|	$route['translate_uri_dashes'] = FALSE;
|
| This is not exactly a route, but allows you to automatically route
| controller and method names that contain dashes. '-' isn't a valid
| class or method name character, so it requires translation.
| When you set this option to TRUE, it will replace ALL dashes in the
| controller and method URI segments.
|
| Examples:	my-controller/index	-> my_controller/index
|		my-controller/my-method	-> my_controller/my_method
*/
$route['default_controller'] 	= 'home';

$route['admin'] 				= 'backend/dashboard/auth/login';
$route['logout'] 				= 'backend/dashboard/auth/logout';
#-------------------------------------------------
#     CUSTOMER ROUETS
$route['customer'] 				= 'customer/auth/login';
$route['log_out'] 				= 'customer/auth/logout';
#-------------------------------------------------

#-------------------------------------------------
#     WEBSITE ROUETS

$route['blog'] 					= 'home/blog';
$route['blog/(:any)'] 			= 'home/blog/$1';
$route['blog/(:any)/(:any)'] 	= 'home/blog/$1/$2';


$route['exchange'] 				= 'home/exchange';
$route['contact'] 				= 'home/contact';
// $route['about'] 				= 'home/about';
$route['balances'] 				= 'home/balances';
$route['deposit'] 				= 'home/deposit';
$route['deposit/(:any)'] 		= 'home/deposit/$1';
$route['withdraw'] 				= 'home/withdraw';
$route['withdraw/(:any)'] 		= 'home/withdraw/$1';
$route['transfer'] 				= 'home/transfer';
$route['transactions'] 			= 'home/transactions';
$route['open_order'] 			= 'home/open_order';
$route['complete_order'] 		= 'home/complete_order';
$route['trade_history'] 		= 'home/trade_history';
$route['register'] 				= 'home/register';
$route['login'] 				= 'home/login';
$route['profile'] 				= 'home/profile';
$route['profile_verify'] 		= 'home/profile_verify';

$route['resetPassword'] 		= 'home/resetPassword';
$route['forgotPassword'] 		= 'home/forgotPassword';
$route['paymentform'] 			= 'home/paymentform';
$route['payout_setting'] 		= 'home/payout_setting';
$route['(:any)'] 				= 'home/page';

$route['404_override'] 			= '';
$route['translate_uri_dashes'] 	= FALSE;