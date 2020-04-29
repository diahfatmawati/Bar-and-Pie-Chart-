<?php
include('koneksi.php');
$negara = mysqli_query($koneksi,"select * from corona");
while($row = mysqli_fetch_array($negara)){
	$nama_negara[] = $row['country'];
	$total[] = $row['total_cases'];
}
?>
<!doctype html>
<html>

<head>
	<title> Grafik Pie Chart COVID-19 di 10 Negara </title>
	<script type="text/javascript" src="Chart.js"></script>
</head>

<body>
	<div id="canvas-holder" style="width:70%">
		<canvas id="chart-area"></canvas>
	</div>
	<script>
		var config = {
			type: 'pie',
			data: {
				datasets: [{
					data:<?php echo json_encode($total); ?>,
					backgroundColor: [
					'rgba(255, 99, 132, 0.2)',
					'rgba(54, 162, 235, 0.2)',
					'rgba(255, 206, 86, 0.2)',
					'rgba(75, 192, 192, 0.2)',
					'rgb(225, 248, 220)',
					'rgb(254, 240, 245)',
					'rgb(220, 220, 220)',
					'rgb(216, 191, 216)',
					'rgb(245, 222, 179)',
					'rgb(255, 250, 250)',

					],
					borderColor: [
					'rgba(255,99,132,1)',
					'rgba(54, 162, 235, 1)',
					'rgba(255, 206, 86, 1)',
					'rgba(75, 192, 192, 1)',
					'rgb(189, 183, 107)',
					'rgb(252, 182, 193)',
					'rgb(169, 169, 169)',
					'rgb(186, 85, 211)',
					'rgb(188, 143, 142)',
					'rgb(192, 192, 192)',

					],
					label: 'Presentase COVID-19 di 10 Negara'
				}],
				labels: <?php echo json_encode($nama_negara); ?>},
			options: {
				responsive: true
			}
		};

		window.onload = function() {
			var ctx = document.getElementById('chart-area').getContext('2d');
			window.myPie = new Chart(ctx, config);
		};

		document.getElementById('randomizeData').addEventListener('click', function() {
			config.data.datasets.forEach(function(dataset) {
				dataset.data = dataset.data.map(function() {
					return randomScalingFactor();
				});
			});

			window.myPie.update();
		});

		var colorNames = Object.keys(window.chartColors);
		document.getElementById('addDataset').addEventListener('click', function() {
			var newDataset = {
				backgroundColor: [],
				data: [],
				label: 'New dataset ' + config.data.datasets.length,
			};

			for (var index = 0; index < config.data.labels.length; ++index) {
				newDataset.data.push(randomScalingFactor());

				var colorName = colorNames[index % colorNames.length];
				var newColor = window.chartColors[colorName];
				newDataset.backgroundColor.push(newColor);
			}

			config.data.datasets.push(newDataset);
			window.myPie.update();
		});

		document.getElementById('removeDataset').addEventListener('click', function() {
			config.data.datasets.splice(0, 1);
			window.myPie.update();
		});
	</script>
</body>

</html>
