/**
 * editor_plugin_src.js
 *
 * Copyright 2009, Moxiecode Systems AB
 * Released under LGPL License.
 *
 * License: http://tinymce.moxiecode.com/license
 * Contributing: http://tinymce.moxiecode.com/contributing
 */
(function(a){a.create("tinymce.plugins.EmotionsPlugin",{init:function(b,c){b.addCommand("mceEmotion",function(){b.windowManager.open({file:c+"/emotions.htm",width:250+parseInt(b.getLang("emotions.delta_width",0)),height:160+parseInt(b.getLang("emotions.delta_height",0)),inline:1},{plugin_url:c})});b.addButton("emotions",{title:"emotions.emotions_desc",cmd:"mceEmotion"})},getInfo:function(){return{longname:"Emotions",author:"Moxiecode Systems AB",authorurl:"http://tinymce.moxiecode.com",infourl:"http://wiki.moxiecode.com/index.php/TinyMCE:Plugins/emotions",version:a.majorVersion+"."+a.minorVersion}}});a.PluginManager.add("emotions",a.plugins.EmotionsPlugin)})(tinymce);