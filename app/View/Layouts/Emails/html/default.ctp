<?php
/**
 *
 * PHP 5
 *
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @package       app.View.Layouts.Email.html
 * @since         CakePHP(tm) v 0.10.0.1076
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN">
<html>
<head>
	<title><?php echo $title_for_layout; ?></title>
</head>
<body>

	<?php echo $this->Html->image('http://www.bentrovato.com.br/img/logo.png'); ?>
	
	<?php echo $this->fetch('content'); ?>

	<div style="mso-element:para-border-div;border:none;border-bottom:solid windowtext 1.5pt;
padding:0cm 0cm 1.0pt 0cm">

		<p class="MsoNormal" style="border:none;mso-border-bottom-alt:solid windowtext 1.5pt;
	padding:0cm;mso-padding-alt:0cm 0cm 1.0pt 0cm">&nbsp;</p>

	</div>

	<p>
		<a href="http://www.bentrovato.com.br" style="color: #7F7F7F; font-size: 10.0pt; text-decoration: none;">www.bentrovato.com.br</a> | <a href="http://facebook.com/byBenTrovato" style="color: #7F7F7F; font-size: 10.0pt; text-decoration: none;">http://facebook.com/byBenTrovato</a> | <a href="http://twitter.com/byBenTrovato" style="color: #7F7F7F; font-size: 10.0pt; text-decoration: none;">http://twitter.com/byBenTrovato</a> | <a href="http://instagram.com/byBenTrovato" style="color: #7F7F7F; font-size: 10.0pt; text-decoration: none;">http://instagram.com/byBenTrovato</a> | <a href="http://pinterest.com/byBenTrovato" style="color: #7F7F7F; font-size: 10.0pt; text-decoration: none;">http://pinterest.com/byBenTrovato</a>
	</p>

</body>
</html>