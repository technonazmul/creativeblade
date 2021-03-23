	<br>
	<div class="footer well" style="text-align: center;">
		<small>
			<a href="{SITEURL}index.php?">{L_166}</a>
<!-- IF B_CAN_SELL -->
			| <a href="{SITEURL}select_category.php?">{L_028}</a>
<!-- ENDIF -->
<!-- IF B_LOGGED_IN -->
			| <a href="{SITEURL}user_menu.php?">{L_622}</a>
			| <a href="{SITEURL}logout.php?">{L_245}</a>
<!-- ELSE -->
			| <a href="{SITEURL}register.php?">{L_235}</a>
			| <a href="{SITEURL}user_login.php?">{L_052}</a>
<!-- ENDIF -->
			| <a href="{SITEURL}help.php" alt="faqs" class="new-window">{L_148}</a>
<!-- IF B_FEES -->
			| <a href="{SITEURL}fees.php">{L_25_0012}</a>
<!-- ENDIF -->
<!-- IF B_VIEW_ABOUTUS -->
			| <a href="{SITEURL}contents.php?show=aboutus">{L_5085}</a>
<!-- ENDIF -->
<!-- IF B_VIEW_PRIVPOL -->
			| <a href="{SITEURL}contents.php?show=priv">{L_401}</a>
<!-- ENDIF -->
<!-- IF B_VIEW_TERMS -->
			| <a href="{SITEURL}contents.php?show=terms">{L_5086}</a>
<!-- ENDIF -->
<!-- IF B_VIEW_COOKIES -->
			| <a href="{SITEURL}contents.php?show=cookies">{L_1110}</a>
<!-- ENDIF -->
		</small>
		<br>
	</div>
	<div class="copyright">
		{L_COPY}

	 &copy; 2020 - {L_COPY_YEAR} <a href="{SITEURL}">{SITENAME}</a>
	</div>
</div>
<script src="{SITEURL}js/jquery.lightbox.js"></script>
<script src="{SITEURL}js/webid.js"></script>
</body>
</html>