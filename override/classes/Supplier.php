<?php
/**
 * Creative Elements - Elementor based PageBuilder
 *
 * @author    WebshopWorks
 * @copyright 2019-2021 WebshopWorks.com
 * @license   One domain support license
 */
defined('_PS_VERSION_') or die;
class Supplier extends SupplierCore
{
    /*
    * module: creativeelements
    * date: 2021-04-05 12:47:29
    * version: 1.4.10
    */
    const CE_OVERRIDE = true;
    /*
    * module: creativeelements
    * date: 2021-04-05 12:47:29
    * version: 1.4.10
    */
    public function __construct($id = null, $idLang = null)
    {
        parent::__construct($id, $idLang);
        $ctrl = Context::getContext()->controller;
        if ($ctrl instanceof SupplierController && !SupplierController::$initialized && !$this->active && Tools::getIsset('id_employee') && Tools::getIsset('adtoken')) {
            $tab = 'AdminSuppliers';
            if (Tools::getAdminToken($tab . (int) Tab::getIdFromClassName($tab) . (int) Tools::getValue('id_employee')) == Tools::getValue('adtoken')) {
                $this->active = 1;
            }
        }
    }
}
