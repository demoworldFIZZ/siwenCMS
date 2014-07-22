<!--#include file="easyasp/easp.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%  if request.Form("user")="" then
    response.Write"<script language=javascript>alert('请输入用户名');history.back(-1);</script>"
 response.End()
 end if
 if request.Form("pwd")="" then
 response.Write"<script language=javascript>alert('请输入密码');history.back(-1);</script>"
 response.End()
 end if
 dim user,pwd,sql,rs
    user=trim(request.Form("user"))
    pwd=trim(request.Form("pwd"))
 sql="select * from cduserjiaoyuan where UserName='"&user&"' and UserPass='"&pwd&"'"
 set rs=easp.db.exec(sql)
if rs.eof then
 response.Write"<script> alert('无此用户');history.back(-1);</script>"
 response.End()
 else 
      session("user")=rs("username")
  
      response.Redirect"index.html"
 end if
 rs.close
 set rs=nothing
 cn.close
 set cn=nothing
 
%>