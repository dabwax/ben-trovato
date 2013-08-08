<div class="row">
		<?php echo $this->Html->image('Banner_Contato.jpg', array('style' => 'width: 100%;') ); ?>
</div>

<?php echo $this->Html->css('http://glyphicons.getbootstrap.com/css/bootstrap-glyphicons.css'); ?>

<div class="row" style="margin-top: 20px; margin-bottom: 40px;">
	<div class="span6">
		<h2 style="font-size: 20px; margin-bottom: 22px;">Informações Úteis</h2>

		<ul style="margin: 0px; border-right: 1px solid #CCC; margin-right: -5px;">
			<li style="list-style: none;">

				<?php echo $this->Html->image('LOCALIZADOR_CINZA.png', array('style' => 'float: left; display: inline; margin-right: 24px;margin-top: 5px;width: 18px;margin-bottom: 10px;') ); ?>
				<p style="font-size: 13px;">
					 Av. das Américas, 700 – Bloco 8 – Loja 108 B<br />
					Barra da Tijuca – Rio de Janeiro - Brasil<br />
					CEP: 22640-100<br />
				</p>
			</li>
			<li style="list-style: none; clear: both;">
				<?php echo $this->Html->image('EMAIL_CINZA.png', array('style' => 'float: left; display: inline; margin-right: 19px;margin-top: 5px;width: 22px;margin-bottom: 10px;') ); ?>
				<p style="font-size: 13px;">
					<a href="mailto:contato@bentrovato.com.br" style="text-decoration: underline; color: #333; text-decoration: none;">contato@bentrovato.com.br</a>
				</p>
			</li>
		</ul>
	</div>

	<div class="span5" style="margin-top: 9px;">

		<ul style="margin: 0px; margin-top: 58px;">
			<li style="list-style: none; clear: both;">
				<?php echo $this->Html->image('RELOGIO_CINZA.png', array('style' => 'float: left; display: inline; margin-right: 19px;margin-top: 5px;width: 22px;margin-bottom: 10px;') ); ?>
				<p style="font-size: 13px;">
					Segunda a Sexta<br />
					10h - 18h<br />
				</p>
			</li>
		</ul>
	</div>

</div>

<div class="row" style="margin-bottom: 20px;">

	<div class="span6">

		<?php echo $this->Html->image('Contato_Foto01.jpg', array('id' => 'imagem-principal') ); ?>

		<a href="#" class="imagem-pequena ativo">
			<?php echo $this->Html->image('Contato_Foto01.jpg'); ?>
		</a>

		<a href="#" class="imagem-pequena">
			<?php echo $this->Html->image('Contato_Foto02.jpg'); ?>
		</a>

		<a href="#" class="imagem-pequena">
			<?php echo $this->Html->image('Contato_Foto03.jpg'); ?>
		</a>

	</div>

	<div class="span6">
		<iframe width="425" height="300" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=pt-BR&amp;geocode=&amp;q=Av.+das+Am%C3%A9ricas,+700,+Rio+de+Janeiro,+Rep%C3%BAblica+Federativa+do+Brasil&amp;aq=0&amp;oq=Av.+das+Am%C3%A9ricas,+700&amp;sll=-14.408749,-54.042208&amp;sspn=45.093435,86.572266&amp;t=h&amp;ie=UTF8&amp;hq=&amp;hnear=Av.+das+Am%C3%A9ricas,+700+-+Barra+da+Tijuca,+Rio+de+Janeiro,+22640-100,+Rep%C3%BAblica+Federativa+do+Brasil&amp;z=14&amp;ll=-23.00352,-43.322107&amp;output=embed"></iframe>
	</div>
</div>

<script type="text/javascript">
	$(document).ready(function() {
		$(".imagem-pequena").click(function() {
			var img = $(this).find('img').attr('src');

			$("#imagem-principal").attr('src', img);

			$(".imagem-pequena").removeClass("ativo");

			$(this).addClass("ativo");

			return false;
		});
	});
</script>