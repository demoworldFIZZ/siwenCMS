<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gb2312">
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<meta http-equiv="content-language" content="gb2312" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>标题</title>
<link rel="stylesheet" type="text/css" href="css/reset.css" />
<link rel="stylesheet" type="text/css" href="css/common.css" />
<style type="text/css" media="all">
body {
	background: #fff;
	text-align: left;
	font: 14px/1.2 verdana, geneva, tahoma, arial, helvetica, \5b8b\4f53, sans-serif;
	color: #000;
}
form { margin: 0px; }
img { border: 0px; vertical-align: middle; }
a:link,a:visited { color: #036; text-decoration: none; }
a:hover,a:active { color: #f00; text-decoration: underline; }
#wrap {
	margin: 0 auto;
	width: 960px;
	text-align: left;
}
</style>
</head>
<body>
<div id="wrap">
	<FORM ACTION=“getpost.php” METHOD=“get”>

<INPUT TYPE=“text” NAME=“Text” VALUE=“Hello World”></INPUT>

<INPUT TYPE=“submit” VALUE=“Method=Get”></INPUT>

</FORM>
<BR>

<FORM ACTION=“getpost.php” METHOD=“post”>

<INPUT TYPE=“text” NAME=“Text” VALUE=“Hello World”></INPUT>

<INPUT TYPE=“submit” VALUE=“Method=Post”></INPUT>

</FORM>

<BR>

<BR>

<? If Request.QueryString(“Text”) <> ““ Then ?>

通过get方法传递来的字符串是： “<B><?= Request.QueryString(“Text”) ?></B>“<BR>

<? End If ?>

<? If Request.Form(“Text”) <> ““ Then ?>

通过Post方法传递来的字符串是： “<B><?= Request.Form(“Text”) ?></B>“<BR>

<? End If ?>
</div>
</body>
</html>
