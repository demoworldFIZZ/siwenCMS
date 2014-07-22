<!--#include file="easyasp/easp.asp" -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<%
    dim username,password ,rs
    username=request.querystring("user") '获取账号字段值
    password=request.querystring("pwd") '获取密码字段值
    set rs=server.createobject("adodb.recordset")
    rs.open "select username,password from [cduserjiaoyuan] where username='"&username&"' and password='"&password&"'" ,conn,1,1
    if rs.eof and rs.bof then
    response.write "账号密码不对"
          'if rs.recordcount<=0 then
          'response.write "账号密码不对"
          'end if
    else
    session("username")=rs("username") '创建session实现用户追踪
    response.write "<script>location.href='index.html'</script>"
    end if
%>