---
layout: post
title: Watch your PHP version
last_modified_at: 2023-10-31T19:54:00+00:00
---

N° 2023/07 - Watch your PHP version <img class="php8" src="/i/b/logo_php8_2.svg" alt="php8.2" width="160" height="48">

### End of Life for PHP 8.0

Please notice: PHP current Version series are not that long supported any more like they were with elder PHP series, i.e. PHP 5. See this official [Support Until](https://www.php.net/supported-versions.php) announcement page. Even for PHP 8.0 EOL time will end in 3 weeks:

<div>
    <div>

	<style type="text/css">
            table.standard td { padding: .25rem }
            [data-dark-theme="dark"] table.standard { color: #444c56 }
            .security { background-color: #f93 }
            .stable { background-color: #9c9 }
            .eol { background-color: #f33 }
	</style>

<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 970 228" width="970" height="228">
	<style type="text/css">

            text {
				fill: #333;
				font-family: var(--font-family-sans-serif);
				font-size: 16px;
			}

            .years text {
              fill: currentColor;
            }
			[data-dark-theme="dark"] .years text {
              fill: aquamarine;
            }

			g.eol rect,
			.branches rect.eol {
				fill: #f33;
			}

			g.eol text {
				fill: white;
			}

			g.security rect,
			.branches rect.security {
				fill: #f93;
			}

			g.stable rect,
			.branches rect.stable {
				fill: #9c9;
			}

			.branch-labels text {
				dominant-baseline: central;
				text-anchor: middle;
			}

			.today line {
				stroke: #f33;
				stroke-dasharray: 7,7;
				stroke-width: 3px;
			}

			.today text {
				fill: #f33;
				text-anchor: middle;
			}

			.years line {
				stroke: black;
			}

			.years text {
				text-anchor: middle;
			}

	</style>

	<!-- Branch labels -->
	<g class="branch-labels">
					<g class="eol">
				<rect x="0" y="24" width="40" height="30"></rect>
				<text x="20" y="39">
					7.2				</text>
			</g>
					<g class="eol">
				<rect x="0" y="54" width="40" height="30"></rect>
				<text x="20" y="69">
					7.3				</text>
			</g>
					<g class="eol">
				<rect x="0" y="84" width="40" height="30"></rect>
				<text x="20" y="99">
					7.4				</text>
			</g>
					<g class="security">
				<rect x="0" y="114" width="40" height="30"></rect>
				<text x="20" y="129">
					8.0				</text>
			</g>
					<g class="stable">
				<rect x="0" y="144" width="40" height="30"></rect>
				<text x="20" y="159">
					8.1				</text>
			</g>
					<g class="stable">
				<rect x="0" y="174" width="40" height="30"></rect>
				<text x="20" y="189">
					8.2				</text>
			</g>
			</g>

	<!-- Branch blocks -->
	<g class="branches">
								<rect class="stable" x="80" y="24" width="0" height="30"></rect>
			<rect class="security" x="80" y="24" width="109.73606395795" height="30"></rect>
								<rect class="stable" x="80" y="54" width="111.70737049611" height="30"></rect>
			<rect class="security" x="191.70737049611" y="54" width="119.92114773847" height="30"></rect>
								<rect class="stable" x="80" y="84" width="229.00010951703" height="30"></rect>
			<rect class="security" x="309.00010951703" y="84" width="119.92114773847" height="30"></rect>
								<rect class="stable" x="188.42185959917" y="114" width="239.84229547695" height="30"></rect>
			<rect class="security" x="428.26415507611" y="114" width="119.92114773847" height="30"></rect>
								<rect class="stable" x="308.01445624795" y="144" width="239.84229547695" height="30"></rect>
			<rect class="security" x="547.85675172489" y="144" width="120.24969882817" height="30"></rect>
								<rect class="stable" x="432.20676815245" y="174" width="240.17084656664" height="30"></rect>
			<rect class="security" x="672.37761471909" y="174" width="119.92114773847" height="30"></rect>
			</g>

	<!-- Year lines -->
	<g class="years">
					<line x1="80" y1="24" x2="80" y2="204"></line>
			<text x="80" y="19.2">
				1 Jan 2020			</text>
					<line x1="200.24969882817" y1="24" x2="200.24969882817" y2="204"></line>
			<text x="200.24969882817" y="19.2">
				1 Jan 2021			</text>
					<line x1="320.17084656664" y1="24" x2="320.17084656664" y2="204"></line>
			<text x="320.17084656664" y="19.2">
				1 Jan 2022			</text>
					<line x1="440.09199430511" y1="24" x2="440.09199430511" y2="204"></line>
			<text x="440.09199430511" y="19.2">
				1 Jan 2023			</text>
					<line x1="560.01314204359" y1="24" x2="560.01314204359" y2="204"></line>
			<text x="560.01314204359" y="19.2">
				1 Jan 2024			</text>
					<line x1="680.26284087176" y1="24" x2="680.26284087176" y2="204"></line>
			<text x="680.26284087176" y="19.2">
				1 Jan 2025			</text>
					<line x1="800.18398861023" y1="24" x2="800.18398861023" y2="204"></line>
			<text x="800.18398861023" y="19.2">
				1 Jan 2026			</text>
					<line x1="920.1051363487" y1="24" x2="920.1051363487" y2="204"></line>
			</g>

	<!-- Today -->
	<g class="today">
				<line x1="539.64297448253" y1="24" x2="539.64297448253" y2="204"></line>
		<text x="539.64297448253" y="223.2">
			Today: 31 Oct 2023		</text>
	</g>

    </div>
</div>

<table class="standard">
	<tbody><tr class="stable">
		<td>Active support</td>
		<td>
			A release that is being actively supported. Reported bugs and security
			issues are fixed and regular point releases are made.
		</td>
	</tr>
	<tr class="security">
		<td>Security fixes only</td>
		<td>
			A release that is supported for critical security issues only. Releases
			are only made on an as-needed basis.
		</td>
	</tr>
	<tr class="eol">
		<td>End of life</td>
		<td>
			A release that is no longer supported. Users of this release should
			upgrade as soon as possible, as they may be exposed to unpatched security
			vulnerabilities.
		</td>
	</tr>
</tbody></table>


So hurry up. The new upcoming Styx 4.3 is your last chance! 😉

See you soon!
