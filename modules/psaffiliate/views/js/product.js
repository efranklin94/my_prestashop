/*
 * NOTICE OF LICENSE
 *
 * This file is licenced under the Software License Agreement.
 * With the purchase or the installation of the software in your application
 * you accept the licence agreement.
 *
 * You must not modify, adapt or create derivative works of this source code.
 *
 * @author    Active Design <office@activedesign.ro>
 * @copyright 2016-2018 Active Design
 * @license   LICENSE.txt
 */
$(function () {
    $(document).ready(function () {
        var clipboard = new Clipboard('.btn-copy');

        $('.btn-copy').popover({
            trigger: 'manual',
            placement: 'top'
        });
        function setTooltip(btn, message) {
            $(btn).attr('data-content', message)
                .popover('show');
        }

        function hideTooltip(btn) {
            setTimeout(function () {
                $(btn).popover('hide');
            }, 1000);
        }

        clipboard.on('success', function (e) {
            setTooltip(e.trigger, 'Copied!');
            hideTooltip(e.trigger);
        });

        // BS Tooltips
        $('[data-toggle="tooltip"]').tooltip({container: "body"});

        if ($(document).find('#product_affiliate_link').length) {
            if ($(document).find('#main .social-sharing .facebook > a').length) {
                var share_link = $(document).find('#main .social-sharing .facebook > a').attr('href');
                var share_link_obj = new URL(share_link);
                share_link_search = share_link_obj.search;
                if (share_link_search.substr(0, 3) == '?u=') {
                    var affiliate_page_link = $(document).find('#product_affiliate_link').val();
                    $(document).find('#main .social-sharing .facebook > a').attr('href', share_link_obj.origin + share_link_obj.pathname + '?u=' +  encodeURIComponent(affiliate_page_link));
                }
            }
        }
    });
});