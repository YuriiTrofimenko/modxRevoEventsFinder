<?php
/* Smarty version 3.1.31, created on 2018-04-23 10:17:04
  from "C:\OSPanel\domains\localhost\manager\templates\default\element\tv\renders\input\date.tpl" */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.31',
  'unifunc' => 'content_5add88704e9d71_24836653',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '38cffc1524b09e8146e2fa8851cf55d36259c29b' => 
    array (
      0 => 'C:\\OSPanel\\domains\\localhost\\manager\\templates\\default\\element\\tv\\renders\\input\\date.tpl',
      1 => 1522336046,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_5add88704e9d71_24836653 (Smarty_Internal_Template $_smarty_tpl) {
?>
<input id="tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
" type="hidden" class="datefield"
	value="<?php echo $_smarty_tpl->tpl_vars['tv']->value->value;?>
" name="tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
"
	onblur="MODx.fireResourceFormChange();"/>

<?php echo '<script'; ?>
 type="text/javascript">
// <![CDATA[

Ext.onReady(function() {
    var fld = MODx.load({
    
        xtype: 'xdatetime'
        ,applyTo: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
'
        ,name: 'tv<?php echo $_smarty_tpl->tpl_vars['tv']->value->id;?>
'
        ,dateFormat: MODx.config.manager_date_format
        ,timeFormat: MODx.config.manager_time_format
        <?php if ($_smarty_tpl->tpl_vars['params']->value['disabledDates']) {?>,disabledDates: <?php echo $_smarty_tpl->tpl_vars['params']->value['disabledDates'];
}?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['disabledDays']) {?>,disabledDays: <?php echo $_smarty_tpl->tpl_vars['params']->value['disabledDays'];
}?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['minDateValue']) {?>,minDateValue: '<?php echo $_smarty_tpl->tpl_vars['params']->value['minDateValue'];?>
'<?php }?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['maxDateValue']) {?>,maxDateValue: '<?php echo $_smarty_tpl->tpl_vars['params']->value['maxDateValue'];?>
'<?php }?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['startDay']) {?>,startDay: <?php echo $_smarty_tpl->tpl_vars['params']->value['startDay'];
}?>

        <?php if ($_smarty_tpl->tpl_vars['params']->value['minTimeValue']) {?>,minTimeValue: '<?php echo $_smarty_tpl->tpl_vars['params']->value['minTimeValue'];?>
'<?php }?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['maxTimeValue']) {?>,maxTimeValue: '<?php echo $_smarty_tpl->tpl_vars['params']->value['maxTimeValue'];?>
'<?php }?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['timeIncrement']) {?>,timeIncrement: <?php echo $_smarty_tpl->tpl_vars['params']->value['timeIncrement'];
}?>
        <?php if ($_smarty_tpl->tpl_vars['params']->value['hideTime']) {?>,hideTime: <?php echo $_smarty_tpl->tpl_vars['params']->value['hideTime'];
}?>

        ,dateWidth: 198
        ,timeWidth: 198
        ,allowBlank: <?php if ($_smarty_tpl->tpl_vars['params']->value['allowBlank'] == 1 || $_smarty_tpl->tpl_vars['params']->value['allowBlank'] == 'true') {?>true<?php } else { ?>false<?php }?>
        ,value: '<?php echo $_smarty_tpl->tpl_vars['tv']->value->value;?>
'
        ,msgTarget: 'under'
    
        ,listeners: { 'change': { fn:MODx.fireResourceFormChange, scope:this}}
    });
    Ext.getCmp('modx-panel-resource').getForm().add(fld);
});

// ]]>
<?php echo '</script'; ?>
><?php }
}
