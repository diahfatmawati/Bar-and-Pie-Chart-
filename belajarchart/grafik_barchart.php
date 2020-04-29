<?php
include('koneksi.php');
$negara = mysqli_query($koneksi,"select * from corona");
while($row = mysqli_fetch_array($negara)){
	$nama_negara[] = $row['country'];
	$total[] = $row['total_cases'];
}
?>
<!DOCTYPE html>
<html>
<head>
	<title> Grafik Bar Chart COVID-19 di 10 Negara </title>
	<script type="text/javascript" src="Chart.js"></script>
</head>
<body>
	<div style="width: 800px;height: 800px">
		<canvas id="myChart"></canvas>
	</div>


	<script>
		var ctx = document.getElementById("myChart").getContext('2d');
		var myChart = new Chart(ctx, {
			type: 'bar',
			data: {
				labels: <?php echo json_encode($nama_negara); ?>,
				datasets: [{
					label: 'Grafik COVID-19 di 10 Negara',
					data: <?php echo json_encode($total); ?>,
					backgroundColor: 'rgb(220, 20, 60)',
					borderColor: 'rgb(139, 5, 0)',
					borderWidth: 1
				}]
			},
			options: {
				scales: {
					yAxes: [{
						ticks: {
							beginAtZero:true
						}
					}]
				}
			}
		});
	</script>
</body>
</html>