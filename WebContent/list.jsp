<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<script src="//code.jquery.com/jquery-1.9.1.min.js"></script>
	<form action="#">
		<table>
			<tr>
				<td>Select</td>
				<td>Id</td>
				<td>Name</td>
				<td>Department</td>
			</tr>
			<c:forEach items="${empList}" var="employee">
				<tr>
					<td><input type="checkbox" id="isSelected"
						value="${employee.eid}#${employee.eid}" /></td>
					<td>${employee.eid}</td>
					<td>${employee.ename}</td>
					<td><select id="dept${employee.eid}" name="dept">

							<c:forEach var="dep" items="${deptList}">

								<option>${dep}</option>

							</c:forEach>

					</select></td>

				</tr>

			</c:forEach>
		</table>
		<button onclick="submitForm('formId')">Submit</button>
	</form>

	<script>
		function submitForm() {

			$.ajax({
				url : "deptAssign",
				type : "POST",
				data : "selectedValue="
						+ $('#isSelected:checked').map(function() {
							var did = 'dept' + this.value.split('#')[1];
							var dval = $('#' + did).val();
							return this.value.split('#')[0] + '#' + dval;
						}).get().join(','),
				success : function(result) {
					window.location = "emplist";
				}
			});

		}
	</script>
</body>
</html>