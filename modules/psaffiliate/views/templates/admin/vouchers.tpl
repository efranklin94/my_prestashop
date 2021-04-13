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
<div id="container-psaffiliate-vouchers">
    <div class="row">
        <div class="panel clearfix">
            <div class="panel-heading">
                {l s='Vouchers to share' mod='psaffiliate'}
            </div>
            <div class="alert alert-warning">
                {l s='In this area you can select a number of voucher which will be used as templates.' mod='psaffiliate'}<br />
                {l s='Affiliates will be able to generate voucher codes based on the templates selected.' mod='psaffiliate'}<br /><br />
                <strong>{l s='Tips:' mod='psaffiliate'}</strong><br />
                {l s='1. Please enter all the details about discount conditions (ex: categories that will apply to, minimum amount, country/carrier/customer group/compatibility/product restrictions or if it\'s available only for a specific product) in the "description" area of the Cart Rule. This information will only be shown to the affiliates.' mod='psaffiliate'}<br />
                {l s='2. The template name shown in front will be the name of the Cart Rule, but affiliates will be able to insert another name when they are generating coupons.' mod='psaffiliate'}<br />
                {l s='3. The code will also be generated by your affiliates, but it will be prefixed by the code you enter. For example if your Cart Rule\'s code is "AFFBEAUTY", and an affiliate creates a voucher with code "FACEBOOKAD", the final code will be "AFFBEAUTY_FACEBOOKAD". If you leave the "Code" field empty, then the final code will not be prefixed.' mod='psaffiliate'}<br />
                {l s='4. "Valid from" and "Valid to" of the Vouchers created by your affiliates will be exactly the same as the ones you enter when you create the Cart Rule.' mod='psaffiliate'}<br />
                {l s='5. Deleting Cart Rule templates or disabling them from "Cart rules" area will affect existent Vouchers created by your affiliates. If you delete a Cart Rule template or if you disable it, all Vouchers created from that template will be deleted or disabled. Same if you re-enable the Cart Rule. ATTENTION: Removing a Cart Rule Template from this area will not affect existing Vouchers created by your affiliates, if you do not disable them from "Cart Rules" section.' mod='psaffiliate'}<br />
            </div>
            <br /><br />
            <form method="POST" id="voucher_form" class="form-horizontal">
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        {l s='Enable Vouchers tracking' mod='psaffiliate'}
                    </label>
                    <div class="col-lg-9">
                        <div class="col-lg-9">
                            <span class="switch prestashop-switch fixed-width-lg">
							    <input type="radio" name="vouchers_tracking" id="vouchers_tracking_on" value="1" {if $vouchers_tracking}checked="checked"{/if}>
                                <label for="vouchers_tracking_on">{l s='Yes' mod='psaffiliate'}</label>
								<input type="radio" name="vouchers_tracking" id="vouchers_tracking_off" value="0" {if !$vouchers_tracking}checked="checked"{/if}>
                                <label for="vouchers_tracking_off">{l s='No' mod='psaffiliate'}</label>
                                <a class="slide-button btn"></a>
                            </span>
                            <p class="help-block">
                                {l s='Enabling this will allow tracking visitors by the voucher code they have used. For example, if they make a purchase using a voucher provided by one of your affiliates, their purchase will be associated to that affiliate. It also works with lifetime affiliation.' mod='psaffiliate'}
                            </p>
                        </div>
                    </div>
                </div>
                <div class="form-group">
                    <label class="control-label col-lg-3">
                        {l s='Cart rules templates' mod='psaffiliate'}
                    </label>
                    <div class="col-lg-9">
                        <select name="voucher_templates_selected[]" id="voucher_templates_selected" multiple>
                            {foreach from=$cartRules item=cartRule}
                                    <option value="{$cartRule.id_cart_rule}"{if in_array($cartRule.id_cart_rule, $selected_cart_rules)} selected{/if}>{$cartRule.name}{if $cartRule.code} - {$cartRule.code}{/if} - #{$cartRule.id_cart_rule}</option>
                            {/foreach}
                        </select>
                    </div>
                </div>
                <div class="clearfix"></div>
                <div class="panel-footer">
                    <button class="btn btn-default pull-right" name="submitVouchers" id="submit_vouchers" value="1" type="submit"><i class="process-icon-save"></i> {l s='Save' mod='psaffiliate'}</button>
                </div>
            </form>
        </div>
    </div>
</div>