# Welecome to bare metal programming with stm32 with arm cortex-m4
## how to use
<ul>
	<li>connect your board</li>
	<li> run make </li>
	<li>make upload</li>
	<li>connect to openocd with gdb or telnet</li>
	<li>for gdb: </li>
	<ul>
		<li>target localhost:3333</li>
		<li>monitor reset init</li>
		<li>monitor reset flash write_image erase bins/blink</li>
		<li>monitor reset</li>
	</ul>
	<li> if you are using telnet just drob the monitor keyword and port by default is 4444 </li>
</ul>
