<br>
	<div class="footer well" style="text-align: center;">
		<small>
			<a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>index.php?"><?php echo ((isset($this->_rootref['L_166'])) ? $this->_rootref['L_166'] : ((isset($MSG['166'])) ? $MSG['166'] : '{ L_166 }')); ?></a>
<?php if ($this->_rootref['B_CAN_SELL']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>select_category.php?"><?php echo ((isset($this->_rootref['L_028'])) ? $this->_rootref['L_028'] : ((isset($MSG['028'])) ? $MSG['028'] : '{ L_028 }')); ?></a>
<?php } if ($this->_rootref['B_LOGGED_IN']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>user_menu.php?"><?php echo ((isset($this->_rootref['L_622'])) ? $this->_rootref['L_622'] : ((isset($MSG['622'])) ? $MSG['622'] : '{ L_622 }')); ?></a>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>logout.php?"><?php echo ((isset($this->_rootref['L_245'])) ? $this->_rootref['L_245'] : ((isset($MSG['245'])) ? $MSG['245'] : '{ L_245 }')); ?></a>
<?php } else { ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>register.php?"><?php echo ((isset($this->_rootref['L_235'])) ? $this->_rootref['L_235'] : ((isset($MSG['235'])) ? $MSG['235'] : '{ L_235 }')); ?></a>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>user_login.php?"><?php echo ((isset($this->_rootref['L_052'])) ? $this->_rootref['L_052'] : ((isset($MSG['052'])) ? $MSG['052'] : '{ L_052 }')); ?></a>
<?php } ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>help.php" alt="faqs" class="new-window"><?php echo ((isset($this->_rootref['L_148'])) ? $this->_rootref['L_148'] : ((isset($MSG['148'])) ? $MSG['148'] : '{ L_148 }')); ?></a>
<?php if ($this->_rootref['B_FEES']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>fees.php"><?php echo ((isset($this->_rootref['L_25_0012'])) ? $this->_rootref['L_25_0012'] : ((isset($MSG['25_0012'])) ? $MSG['25_0012'] : '{ L_25_0012 }')); ?></a>
<?php } if ($this->_rootref['B_VIEW_ABOUTUS']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>contents.php?show=aboutus"><?php echo ((isset($this->_rootref['L_5085'])) ? $this->_rootref['L_5085'] : ((isset($MSG['5085'])) ? $MSG['5085'] : '{ L_5085 }')); ?></a>
<?php } if ($this->_rootref['B_VIEW_PRIVPOL']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>contents.php?show=priv"><?php echo ((isset($this->_rootref['L_401'])) ? $this->_rootref['L_401'] : ((isset($MSG['401'])) ? $MSG['401'] : '{ L_401 }')); ?></a>
<?php } if ($this->_rootref['B_VIEW_TERMS']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>contents.php?show=terms"><?php echo ((isset($this->_rootref['L_5086'])) ? $this->_rootref['L_5086'] : ((isset($MSG['5086'])) ? $MSG['5086'] : '{ L_5086 }')); ?></a>
<?php } if ($this->_rootref['B_VIEW_COOKIES']) {  ?>
			| <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>contents.php?show=cookies"><?php echo ((isset($this->_rootref['L_1110'])) ? $this->_rootref['L_1110'] : ((isset($MSG['1110'])) ? $MSG['1110'] : '{ L_1110 }')); ?></a>
<?php } ?>
		</small>
		<br>
	</div>
	<div class="copyright">
		<?php echo ((isset($this->_rootref['L_COPY'])) ? $this->_rootref['L_COPY'] : ((isset($MSG['COPY'])) ? $MSG['COPY'] : '{ L_COPY }')); ?>

	 &copy; 2020 - <?php echo ((isset($this->_rootref['L_COPY_YEAR'])) ? $this->_rootref['L_COPY_YEAR'] : ((isset($MSG['COPY_YEAR'])) ? $MSG['COPY_YEAR'] : '{ L_COPY_YEAR }')); ?> <a href="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>"><?php echo (isset($this->_rootref['SITENAME'])) ? $this->_rootref['SITENAME'] : ''; ?></a>
	</div>
</div>
<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/jquery.lightbox.js"></script>
<script src="<?php echo (isset($this->_rootref['SITEURL'])) ? $this->_rootref['SITEURL'] : ''; ?>js/webid.js"></script>
</body>
</html>