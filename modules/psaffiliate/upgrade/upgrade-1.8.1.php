<?php
/**
 * NOTICE OF LICENSE
 *
 * This file is licensed under the Software License Agreement.
 * With the purchase or the installation of the software in your application
 * you accept the licence agreement.
 *
 * You must not modify, adapt or create derivative works of this source code.
 *
 * @author    Active Design <office@activedesign.ro>
 * @copyright 2016-2018 Active Design
 * @license   LICENSE.txt
 */

if (!defined('_PS_VERSION_')) {
    exit;
}

function upgrade_module_1_8_1($module)
{
    return Db::getInstance()->execute('ALTER TABLE `'._DB_PREFIX_.'aff_affiliates` ADD `id_parent_affiliate` int(10) NOT NULL AFTER `id_affiliate`') &&
        Db::getInstance()->execute('ALTER TABLE `'._DB_PREFIX_.'aff_sales` ADD `id_affiliate_origin` int(10) NOT NULL AFTER `id_affiliate`');
}
