<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<!-- CSS -->
<link rel="stylesheet" href="css/reservation.css">

<title>��� - ���� ����</title>
</head>
<body>
	<div id="header" align="center">
		<div class="container-fluid">
			<div class="row">
				<div class="col" align="left" style="padding: 50px;">
					<!-- �ۼ� �� �ϸ� �޴��� ���̵�â�� ���ֵα� -->
					<h1 id="title">���� �̸�</h1>
					<h5 id="company-title">���߻� �̸�</h5>
					<hr>
					<!-- �̹��� �����̵� -->
					<div id="game-image-carousel" class="carousel slide"
						data-bs-ride="carousel">
						<div class="carousel-indicators">
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="0" class="active" aria-current="true"
								aria-label="Slide 1"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="1" aria-label="Slide 2"></button>
							<button type="button" data-bs-target="#carouselExampleIndicators"
								data-bs-slide-to="2" aria-label="Slide 3"></button>
						</div>
						<div class="carousel-inner">
							<div class="carousel-item active">
								<img src="images/sample01.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="images/sample02.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="carousel-item">
								<img src="images/sample03.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
						<button class="carousel-control-prev" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
							<span class="carousel-control-prev-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Previous</span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
							<span class="carousel-control-next-icon" aria-hidden="true"></span>
							<span class="visually-hidden">Next</span>
						</button>
					</div>
					<div id="game-tag">
						<button type="button" class="btn btn-warning">#�����±�01</button>
						<button type="button" class="btn btn-warning">#�����±�02</button>
						<button type="button" class="btn btn-warning">#�����±�03</button>
					</div>
					<!-- ������ ��� �� ���� ��ư -->
					<div id="reservation-status">
						<div id="total-reservate" class="container">
							<div class="row">
								<div id="total-reservate-text" class="col-9">���� ��Ȳ</div>
								<div id="total-reservate-num" class="col-3">n��</div>
							</div>
						</div>
						<button id="reservate" type="button" class="btn btn-warning">��������</button>
					</div>
					<!-- ���� �Ұ� �� �߰� ���� -->
					<div id="game-more-inform" class="card text-center">
						<div class="card-header">
							<ul id="myTab" class="nav nav-tabs card-header-tabs"
								role="tablist">
								<li id="description-title" class="nav-item" role="presentation"><button
										id="description-tab" class="nav-link active"
										data-bs-toggle="tab" data-bs-target="#description"
										type="button" role="tab" aria-controls="description"
										aria-selected="true">���� �Ұ�</button></li>
								<li id="reward-title" class="nav-item" role="presentation"><button
										id="reward-tab" class="nav-link" data-bs-toggle="tab"
										data-bs-target="#reward" type="button" role="tab"
										aria-controls="reward" aria-selected="false">���� ���� ����</button></li>
								<li id="statistics-title" class="nav-item" role="presentation"><button
										id="statistics-tab" class="nav-link" data-bs-toggle="tab"
										data-bs-target="#statistics" type="button" role="tab"
										aria-controls="statistics" aria-selected="false">������
										���</button></li>
							</ul>
						</div>
						<div class="tab-content" id="myTabContent">
							<div class="tab-pane fade show active" id="description"
								role="tabpannel" aria-labelledby="description-tab">
								<h5 class="card-title">(���� �Ұ��� ���� : �÷��� ����� '�巡�� �ö���Ʈ' ����)</h5>
								<br>
								<p class="card-text">
									�巡�� �ö���Ʈ�� �տ� ���� ������ �������� ������ �� �ָ� ���ư��� �����Դϴ�.<br>18���� ĳ���Ϳ�
									300�� ���� ������� �Բ�, �Ѽ����� ������ �����ĺ�����!
								</p>
							</div>
							<div class="tab-pane fade" id="reward" role="tabpannel"
								aria-labelledby="reward-tab">
								<img src="images/sample03.jpg" class="d-block w-100" alt="...">
							</div>
							<div class="tab-pane fade" id="statistics" role="tabpannel"
								aria-labelledby="statistics-tab">
								<img src="images/sample04.jpg" class="d-block w-100" alt="...">
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- navbar �� ��ũ��Ʈ -->
	<script>
		var triggerTabList = [].slice.call(document
				.querySelectorAll('#myTab button'))
		triggerTabList.forEach(function(triggerEl) {
			var tabTrigger = new bootstrap.Tab(triggerEl)

			triggerEl.addEventListener('click', function(event) {
				event.preventDefault()
				tabTrigger.show()
			})
		})
	</script>
</body>
</html>

