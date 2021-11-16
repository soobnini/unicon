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
<link rel="stylesheet" href="css/uploadGame.css">

<title>��� - ���� ���� ����</title>
</head>
<body>
	<!-- ****************************** -->
	<!-- uploadGame���� placeHolder ���� �߰� -->
	<!-- ****************************** -->
	<div id="header" align="center">
		<div class="container-fluid">
			<div class="row">
				<div class="col" align="center" style="padding: 50px;">
					<div id="upload-title">���� ���� ����</div>
					<!-- ���� ���� ���� form -->
					<form id="upload-form">
						<div id="form-container" class="container">
							<!-- ���� �̸� �Է� -->
							<div class="row">
								<div id="name-label" class="col-4">���� �̸�</div>
								<div id="name-input" class="col-6">
									<input type="text" class="form-control" id="name"
										placeholder="���� ������ �̸�">
								</div>
							</div>
							<!-- ���� �Ⱓ �Է� -->
							<div class="row">
								<div id="period-label" class="col-4">���� �Ⱓ</div>
								<div id="period-input" class="col-6">
									<input type="date" class="form-control" id="start-period">
									~ <input type="date" class="form-control" id="end-period">
								</div>
							</div>
							<!-- ȫ�� �̹��� ���ε� -->
							<div class="row">
								<div id="image-label" class="col">ȫ�� �̹��� (�ִ� 4��)</div>
								<div id="image-input">
									<label for="image01"> <img
										src="images/image_upload.jpg" class="image-upload-icon"
										alt="...">
									</label> <input type="file" class="form-control" id="image01">
									<label for="image02"> <img
										src="images/image_upload.jpg" class="image-upload-icon"
										alt="...">
									</label><input type="file" class="form-control" id="image02"> <label
										for="image03"> <img src="images/image_upload.jpg"
										class="image-upload-icon" alt="...">
									</label><input type="file" class="form-control" id="image03"> <label
										for="image04"> <img src="images/image_upload.jpg"
										class="image-upload-icon" alt="...">
									</label> <input type="file" class="form-control" id="image04">
								</div>
							</div>
							<!-- ���� �Ұ��� �Է� -->
							<div id="description-row" class="row">
								<div id="description-label" class="col">���� �Ұ���</div>
								<div id="description-input">
									<textarea class="form-control" id="description" rows="8"
										placeholder="���� ������ �Ұ���"></textarea>
								</div>
							</div>
							<!-- ���� �帣 üũ�ڽ�  -->
							<div id="genre-row" class="row">
								<div id="genre-label" class="col">���� �帣 (�ּ� 1�� �̻�)</div>
								<div id="genre-input">
									<div class="checkbox-group">
										<input class="form-check-input" type="checkbox" value=""
											id="genre01"> <label class="form-check-label"
											for="genre01">�����帣01</label> <input class="form-check-input"
											type="checkbox" value="" id="genre02"> <label
											class="form-check-label" for="genre02">�����帣02</label> <input
											class="form-check-input" type="checkbox" value=""
											id="genre03"> <label class="form-check-label"
											for="genre03">�����帣03</label> <input class="form-check-input"
											type="checkbox" value="" id="genre04"> <label
											class="form-check-label" for="genre04">�����帣04</label>
									</div>
									<div class="checkbox-group">
										<input class="form-check-input" type="checkbox" value=""
											id="genre05"> <label class="form-check-label"
											for="genre05">�����帣05</label> <input class="form-check-input"
											type="checkbox" value="" id="genre06"> <label
											class="form-check-label" for="genre06">�����帣06</label> <input
											class="form-check-input" type="checkbox" value=""
											id="genre07"> <label class="form-check-label"
											for="genre07">�����帣07</label> <input class="form-check-input"
											type="checkbox" value="" id="genre08"> <label
											class="form-check-label" for="genre08">�����帣08</label>
									</div>
								</div>
							</div>
							<!-- ���� ���� �Է� -->
							<hr id="reward-divide">
							<div id="reward-description-row" class="row">
								<div id="reward-description-label" class="col">�������� ���� ���</div>
								<div id="reward-description-input">
									<textarea class="form-control" id="reward-description" rows="8"
										placeholder="���� �� ���� ���"></textarea>
									<!-- ���� ���� �̹��� ���ε� -->
									<div id="reward-image-input" style="margin-top: 10px;">
										<label for="reward-image01"> <img
											src="images/image_upload.jpg" class="image-upload-icon"
											alt="...">
										</label> <input type="file" class="form-control" id="reward-image01">
										<label for="reward-image02"> <img
											src="images/image_upload.jpg" class="image-upload-icon"
											alt="...">
										</label><input type="file" class="form-control" id="reward-image02">
										<label for="reward-image03"> <img
											src="images/image_upload.jpg" class="image-upload-icon"
											alt="...">
										</label><input type="file" class="form-control" id="reward-image03">
										<label for="reward-image04"> <img
											src="images/image_upload.jpg" class="image-upload-icon"
											alt="...">
										</label> <input type="file" class="form-control" id="reward-image04">
									</div>
								</div>
							</div>
							<button id="upload-btn" type="button" class="btn btn-warning">����
								�� ���� ����</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>
	<!-- ���� �̹��� ���ε� ��ũ��Ʈ -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
	<script>
		function readURL(input) {
			var id = $(input).attr("id");

			if (input.files && input.files[0]) {
				var reader = new FileReader();

				reader.onload = function(e) {
					$('label[for="' + id + '"] .image-upload-icon').attr('src',
							e.target.result).show();
				}

				reader.readAsDataURL(input.files[0]);
			}
		}

		$("input[id^='image']").change(function() {
			readURL(this);
		});
		
		$("input[id^='reward-image']").change(function() {
			readURL(this);
		});
	</script>
</body>
</html>

