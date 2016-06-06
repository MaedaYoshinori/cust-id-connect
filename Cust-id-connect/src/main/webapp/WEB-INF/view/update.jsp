<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>

<html>

<head>
<meta charset="utf-8">
<title>顧客情報更新画面</title>
<!-- <script language="JavaScript">
	function kakunin(frm) {
		alert("更新しました")
		location.reload();
	}
</script> -->
</head>

<body>

	<h1>顧客情報更新</h1>

	<form:form modelAttribute = "customerData">
		<table>

			<tr>
				<td>氏名</td>
				<td><form:input path = "name"  placeholder="ここに氏名を入力" size="50" />
				 	<!-- required="required"
					pattern="^[-a-zA-Z0-9ぁ-ゑァ-ヶ一-龠々][-a-zA-Z0-9ぁ-ゑんァ-ヶ一-龠々 　]{0,254}$"
					title="氏名は半角英数字、かな漢字のみで記入してください。"  /> --></td>

				<td><font color="red">＜"必須"＞</font></td>
			</tr>
			<tr>
				<td>住所</td>
				<td><form:input path="address" placeholder="ここに住所を入力" size="50" />
					<%-- required="required"
					pattern="^[-a-zA-Z0-9ぁ-ゑァ-ヶ一-龠々][-a-zA-Z0-9ぁ-ゑんァ-ヶ一-龠々 　]{0,254}$"
					title="住所は半角英数字、かな漢字のみで記入してください。" --%></td>
				<td><font color="red">＜"必須"＞</font></td>
			</tr>
			<tr>
				<td>電話番号</td>
				<td><form:input path="tel" placeholder="ここに電話番号を入力 " size="50" />
					<%-- required="required" pattern="\d{1,5}-\d{1,4}-\d{3,5}"
					title="電話番号は、市外局番からハイフン（-）を入れて記入してください。" --%></td>
				<td><font color="red">＜"必須"＞</font></td>
			</tr>

			<tr>
				<td>メールアドレス</td>
				<td><form:input path="mailaddress" placeholder="ここにメールアドレスを入力" size="50" /></td>
			</tr>
			<tr>
				<td>誕生月</td>
				<td><form:select path="birth">
						<option disabled selected>誕生月を入力</option>
						<option value = 1>１月</option>
						<option value = 2>２月</option>
						<option value = 3>３月</option>
						<option value = 4>４月</option>
						<option value = 5>５月</option>
						<option value =6>６月</option>
						<option value =7>７月</option>
						<option value =8>８月</option>
						<option value =9>９月</option>
						<option value =10>10月</option>
						<option value =11>11月</option>
						<option value =12>12月</option>
				</form:select> 性別 <form:select path ="gender">
						<option disabled selected>性別を入力</option>
						<option value = "男">男</option>
						<option value = "女">女</option>
						<option value = "ホモ">他</option>
				</form:select></td>

			</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="更新" /> <input type="reset" />
					<a href="/Cust-id-connect/list"><input type="button" value="一覧画面に戻る" /></a>
					<a href="/Cust-id-connect/top"><input type="button" value="トップ画面に戻る" /></a></td>
			</tr>

		</table>
	</form:form>
</body>
</html>
