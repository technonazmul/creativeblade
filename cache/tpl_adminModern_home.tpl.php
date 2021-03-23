<div class="row">
			<div class="col-md-3">
				<div class="panel panel-default">
					<div class="panel-heading"><?php echo ((isset($this->_rootref['L_1061'])) ? $this->_rootref['L_1061'] : ((isset($MSG['1061'])) ? $MSG['1061'] : '{ L_1061 }')); ?></div>
					<div class="panel-body">
						<form name="anotes" action="" method="post">
							<textarea rows="15" name="anotes" class="form-control"><?php echo (isset($this->_rootref['ADMIN_NOTES'])) ? $this->_rootref['ADMIN_NOTES'] : ''; ?></textarea>
							<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
							<br>
							<button class="btn btn-primary" type="submit" name="act"><?php echo ((isset($this->_rootref['L_007'])) ? $this->_rootref['L_007'] : ((isset($MSG['007'])) ? $MSG['007'] : '{ L_007 }')); ?></button>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-9">

				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_25_0025'])) ? $this->_rootref['L_25_0025'] : ((isset($MSG['25_0025'])) ? $MSG['25_0025'] : '{ L_25_0025 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_528'])) ? $this->_rootref['L_528'] : ((isset($MSG['528'])) ? $MSG['528'] : '{ L_528 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_527'])) ? $this->_rootref['L_527'] : ((isset($MSG['527'])) ? $MSG['527'] : '{ L_527 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_540'])) ? $this->_rootref['L_540'] : ((isset($MSG['540'])) ? $MSG['540'] : '{ L_540 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['ADMINMAIL'])) ? $this->_rootref['ADMINMAIL'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0026'])) ? $this->_rootref['L_25_0026'] : ((isset($MSG['25_0026'])) ? $MSG['25_0026'] : '{ L_25_0026 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['CRON'])) ? $this->_rootref['CRON'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_663'])) ? $this->_rootref['L_663'] : ((isset($MSG['663'])) ? $MSG['663'] : '{ L_663 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['GALLERY'])) ? $this->_rootref['GALLERY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_2__0025'])) ? $this->_rootref['L_2__0025'] : ((isset($MSG['2__0025'])) ? $MSG['2__0025'] : '{ L_2__0025 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['BUY_NOW'])) ? $this->_rootref['BUY_NOW'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_5008'])) ? $this->_rootref['L_5008'] : ((isset($MSG['5008'])) ? $MSG['5008'] : '{ L_5008 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['CURRENCY'])) ? $this->_rootref['CURRENCY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0035'])) ? $this->_rootref['L_25_0035'] : ((isset($MSG['25_0035'])) ? $MSG['25_0035'] : '{ L_25_0035 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['TIMEZONE'])) ? $this->_rootref['TIMEZONE'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_363'])) ? $this->_rootref['L_363'] : ((isset($MSG['363'])) ? $MSG['363'] : '{ L_363 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['DATEFORMAT'])) ? $this->_rootref['DATEFORMAT'] : ''; ?> <small>(<?php echo (isset($this->_rootref['DATEEXAMPLE'])) ? $this->_rootref['DATEEXAMPLE'] : ''; ?>)</small></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_1131'])) ? $this->_rootref['L_1131'] : ((isset($MSG['1131'])) ? $MSG['1131'] : '{ L_1131 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['EMAIL_HANDLER'])) ? $this->_rootref['EMAIL_HANDLER'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_5322'])) ? $this->_rootref['L_5322'] : ((isset($MSG['5322'])) ? $MSG['5322'] : '{ L_5322 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['DEFULTCONTRY'])) ? $this->_rootref['DEFULTCONTRY'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_2__0002'])) ? $this->_rootref['L_2__0002'] : ((isset($MSG['2__0002'])) ? $MSG['2__0002'] : '{ L_2__0002 }')); ?></strong></div>
							<div class="col-md-9">
<?php $_langs_count = (isset($this->_tpldata['langs'])) ? sizeof($this->_tpldata['langs']) : 0;if ($_langs_count) {for ($_langs_i = 0; $_langs_i < $_langs_count; ++$_langs_i){$_langs_val = &$this->_tpldata['langs'][$_langs_i]; ?>
								<p><?php echo $_langs_val['LANG']; if ($_langs_val['B_DEFAULT']) {  ?> (<?php echo ((isset($this->_rootref['L_2__0005'])) ? $this->_rootref['L_2__0005'] : ((isset($MSG['2__0005'])) ? $MSG['2__0005'] : '{ L_2__0005 }')); ?>)<?php } ?></p>
<?php }} ?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_30_0214'])) ? $this->_rootref['L_30_0214'] : ((isset($MSG['30_0214'])) ? $MSG['30_0214'] : '{ L_30_0214 }')); ?></strong></div>
							<div class="col-md-9"><?php echo (isset($this->_rootref['THIS_VERSION'])) ? $this->_rootref['THIS_VERSION'] : ''; ?> (<?php echo (isset($this->_rootref['CUR_VERSION'])) ? $this->_rootref['CUR_VERSION'] : ''; ?>)</div>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_25_0031'])) ? $this->_rootref['L_25_0031'] : ((isset($MSG['25_0031'])) ? $MSG['25_0031'] : '{ L_25_0031 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0055'])) ? $this->_rootref['L_25_0055'] : ((isset($MSG['25_0055'])) ? $MSG['25_0055'] : '{ L_25_0055 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_USERS'])) ? $this->_rootref['C_USERS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0056'])) ? $this->_rootref['L_25_0056'] : ((isset($MSG['25_0056'])) ? $MSG['25_0056'] : '{ L_25_0056 }')); ?></strong></div>
							<div class="col-md-3">
<?php if ($this->_rootref['USERCONF'] == 0) {  ?>
								<strong><?php echo ((isset($this->_rootref['L_893'])) ? $this->_rootref['L_893'] : ((isset($MSG['893'])) ? $MSG['893'] : '{ L_893 }')); ?></strong>: <?php echo (isset($this->_rootref['C_IUSERS'])) ? $this->_rootref['C_IUSERS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_892'])) ? $this->_rootref['L_892'] : ((isset($MSG['892'])) ? $MSG['892'] : '{ L_892 }')); ?></strong>: <?php echo (isset($this->_rootref['C_UUSERS'])) ? $this->_rootref['C_UUSERS'] : ''; ?> (<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>admin/listusers.php?usersfilter=admin_approve"><?php echo ((isset($this->_rootref['L_5295'])) ? $this->_rootref['L_5295'] : ((isset($MSG['5295'])) ? $MSG['5295'] : '{ L_5295 }')); ?></a>)
<?php } else { ?>
								<?php echo (isset($this->_rootref['C_IUSERS'])) ? $this->_rootref['C_IUSERS'] : ''; ?>
<?php } ?>
							</div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0057'])) ? $this->_rootref['L_25_0057'] : ((isset($MSG['25_0057'])) ? $MSG['25_0057'] : '{ L_25_0057 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_AUCTIONS'])) ? $this->_rootref['C_AUCTIONS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_354'])) ? $this->_rootref['L_354'] : ((isset($MSG['354'])) ? $MSG['354'] : '{ L_354 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_CLOSED'])) ? $this->_rootref['C_CLOSED'] : ''; ?></div>
						</div>
						<div class="row">
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0059'])) ? $this->_rootref['L_25_0059'] : ((isset($MSG['25_0059'])) ? $MSG['25_0059'] : '{ L_25_0059 }')); ?></strong></div>
							<div class="col-md-3"><?php echo (isset($this->_rootref['C_BIDS'])) ? $this->_rootref['C_BIDS'] : ''; ?></div>
							<div class="col-md-3"><strong><?php echo ((isset($this->_rootref['L_25_0063'])) ? $this->_rootref['L_25_0063'] : ((isset($MSG['25_0063'])) ? $MSG['25_0063'] : '{ L_25_0063 }')); ?></strong></div>
							<div class="col-md-3">
								<strong><?php echo ((isset($this->_rootref['L_5161'])) ? $this->_rootref['L_5161'] : ((isset($MSG['5161'])) ? $MSG['5161'] : '{ L_5161 }')); ?></strong>: <?php echo (isset($this->_rootref['A_PAGEVIEWS'])) ? $this->_rootref['A_PAGEVIEWS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_5162'])) ? $this->_rootref['L_5162'] : ((isset($MSG['5162'])) ? $MSG['5162'] : '{ L_5162 }')); ?></strong>: <?php echo (isset($this->_rootref['A_UVISITS'])) ? $this->_rootref['A_UVISITS'] : ''; ?><br>
								<strong><?php echo ((isset($this->_rootref['L_5163'])) ? $this->_rootref['L_5163'] : ((isset($MSG['5163'])) ? $MSG['5163'] : '{ L_5163 }')); ?></strong>: <?php echo (isset($this->_rootref['A_USESSIONS'])) ? $this->_rootref['A_USESSIONS'] : ''; ?><br>
							</div>
						</div>
					</div>
				</div>

				<div class="panel panel-default">
					<div class="panel-heading"><strong><?php echo ((isset($this->_rootref['L_080'])) ? $this->_rootref['L_080'] : ((isset($MSG['080'])) ? $MSG['080'] : '{ L_080 }')); ?></strong></div>
					<div class="panel-body">
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_30_0032'])) ? $this->_rootref['L_30_0032'] : ((isset($MSG['30_0032'])) ? $MSG['30_0032'] : '{ L_30_0032 }')); ?></div>
							<div class="col-md-3">
								<form action="?action=clearcache" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_30_0031'])) ? $this->_rootref['L_30_0031'] : ((isset($MSG['30_0031'])) ? $MSG['30_0031'] : '{ L_30_0031 }')); ?></button>
								</form>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_30_0032a'])) ? $this->_rootref['L_30_0032a'] : ((isset($MSG['30_0032a'])) ? $MSG['30_0032a'] : '{ L_30_0032a }')); ?></div>
							<div class="col-md-3">
								<form action="?action=clear_image_cache" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_30_0031a'])) ? $this->_rootref['L_30_0031a'] : ((isset($MSG['30_0031a'])) ? $MSG['30_0031a'] : '{ L_30_0031a }')); ?></button>
								</form>
							</div>
						</div>
						<br>
						<div class="row">
							<div class="col-md-9"><?php echo ((isset($this->_rootref['L_1030'])) ? $this->_rootref['L_1030'] : ((isset($MSG['1030'])) ? $MSG['1030'] : '{ L_1030 }')); ?></div>
							<div class="col-md-3">
								<form action="?action=updatecounters" method="post">
									<input type="hidden" name="csrftoken" value="<?php echo (isset($this->_rootref['_CSRFTOKEN'])) ? $this->_rootref['_CSRFTOKEN'] : ''; ?>">
									<button class="btn btn-primary" type="submit" name="submit"><?php echo ((isset($this->_rootref['L_1031'])) ? $this->_rootref['L_1031'] : ((isset($MSG['1031'])) ? $MSG['1031'] : '{ L_1031 }')); ?></button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>