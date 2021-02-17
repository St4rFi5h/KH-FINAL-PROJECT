var ctx = document.getElementById("myChart");
var myChart = new Chart(ctx, {
    type: 'bar',
    data: {
        labels: ['0.5점', '1점', '1.5점', '2점', '2.5점', '3점', '3.5점', '4점', '4.5점', '5점'],
        datasets: [{
            label: '별점',
            data: [12, 1, 3, 20, 4, 7, 3, 22, 6, 34],
            backgroundColor: [
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)',
                'rgba(255, 99 , 132, 0.2)'
            ],
            borderColor: [
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
                'rgba(255, 99 , 132, 1)',
            ],
            borderWidth: 1
        }]
    },
    options: {
        maintainAspectRatio: false,
        legend: { display: false },
        scales: {
            xAxes: [{
                gridLines: {
                    display: false
                }
            }],
            yAxes: [{
                ticks: {
                    beginAtZero: true,
                    stepSize: 30
                },
                gridLines: {
                    display: false
                }
            }]
        }
    }
}
);