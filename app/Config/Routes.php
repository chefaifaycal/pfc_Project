<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (file_exists(SYSTEMPATH . 'Config/Routes.php'))
{
	require SYSTEMPATH . 'Config/Routes.php';
}

/**
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Users');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
$routes->setAutoRoute(true);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Users::index',['filter' => 'noauth']);
$routes->match(['get','post'],'register', 'Users::register',['filter' => 'noauth']);
$routes->match(['get','post'],'client', 'Users::client',['filter' => 'noauth']);

$routes->get('/dashboard/logout', 'Users::logout');
$routes->get('/dashboard', 'Dashboard::index',['filter' => 'auth']);
$routes->get('/ajoutservice', 'Services::ajout',['filter' => 'auth']);
$routes->get('/dashboard/profile', 'Dashboard::profile',['filter' => 'auth']);
$routes->get('/preregistration', 'Users::preregister',['filter' => 'noauth']);
$routes->get('/Commandes', 'Commandes::index',['filter' => 'auth']);
$routes->get('/Avis', 'Avis::index',['filter' => 'auth']);
$routes->get('/dashboard/client', 'Dashboard::client',['filter' => 'auth']);


$routes->get('/admin/users', 'Examples::customers_management',['filter' => 'auth']);
$routes->get('/admin/users/(:any)', 'Examples::customers_management/$1',['filter' => 'auth']);
$routes->post('/admin/users/(:any)', 'Examples::customers_management/$1',['filter' => 'auth']);

$routes->get('/admin/services', 'Examples::services_management',['filter' => 'auth']);
$routes->get('/admin/services/(:any)', 'Examples::services_management/$1',['filter' => 'auth']);
$routes->post('/admin/services/(:any)', 'Examples::services_management/$1',['filter' => 'auth']);

$routes->get('/admin/images', 'Examples::images_management',['filter' => 'auth']);
$routes->get('/admin/images/(:any)', 'Examples::images_management/$1',['filter' => 'auth']);
$routes->post('/admin/images/(:any)', 'Examples::images_management/$1',['filter' => 'auth']);

$routes->get('/admin/avis', 'Examples::avis_management',['filter' => 'auth']);
$routes->get('/admin/avis/(:any)', 'Examples::avis_management/$1',['filter' => 'auth']);
$routes->post('/admin/avis/(:any)', 'Examples::avis_management/$1',['filter' => 'auth']);

$routes->get('/admin/categories', 'Examples::categories_management',['filter' => 'auth']);
$routes->get('/admin/categories/(:any)', 'Examples::categories_management/$1',['filter' => 'auth']);
$routes->post('/admin/categories/(:any)', 'Examples::categories_management/$1',['filter' => 'auth']);

/* Chat Filters */
$routes->get('chat', 'Chat::index',['filter' => 'auth']);

//Routes with Filters for Messages Controller
$routes->get('/Messages/main', 'Messages::main',['filter' => 'auth']);
$routes->get('/Messages', 'Messages::index',['filter' => 'auth']);
$routes->get('/Messages/envoyer', 'Messages::main',['filter' => 'auth']);

//Routes with Filters for Services Controller
$routes->get('/Services', 'Services::index',['filter' => 'auth']);
$routes->get('/services/ajout', 'Services::ajout',['filter' => 'auth']);
$routes->get('/services/recherche', 'Services::recherche',['filter' => 'auth']);
$routes->get('/services/consulter', 'Services::consulter',['filter' => 'auth']);

/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (file_exists(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php'))
{
	require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
