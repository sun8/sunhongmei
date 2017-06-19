<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
<form name="form" action="${path}" method="post">
	<#list  params?keys as key>
		<input type="hidden" name="${key}" value="${params[key]}">
	</#list>
</form>
<script>
	form.submit();
</script>
</body>
</html>