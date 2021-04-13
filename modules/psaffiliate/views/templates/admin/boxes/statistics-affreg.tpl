{*
* NOTICE OF LICENSE
*
* This file is licenced under the Software License Agreement.
* With the purchase or the installation of the software in your application
* you accept the licence agreement.
*
* You must not modify, adapt or create derivative works of this source code.
*
*  @author Active Design <office@activedesign.ro>
*  @copyright  2017-2018 Active Design
*  @license LICENSE.txt
*}
<div class="panel">
    <div class="panel-heading">
        <i class="icon-mail-forward"></i>
        {l s='Affiliates registration' mod='psaffiliate'}
    </div>
    <div class="panel-content">
        <div id="affiliates_registration-chart" data-chart="affiliates_registration" class="psaffiliate-chart"
             data-url="{$link->getAdminLink('AdminPsaffiliateStatistics')|escape:'html':'UTF-8'}&amp;action=generateChart&amp;chart=affiliates_registration">
            <svg></svg>
        </div>
    </div>
</div>