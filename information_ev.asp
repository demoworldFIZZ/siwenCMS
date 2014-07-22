<!--#include file="easyasp/easp.asp" -->

<%
 'If Request.form("u_id")<>"" Then 
	Dim u_id,sql,rs
'	u_id=Request.Form("u_id")
'	Request.Write"您要查询的编号为："&u_id
	Set rs = Easp.Db.Sel("Select * From [cduserjiaoyuan] where userid={get.u_id}")
'End if
%>


<%
	Dim email,jg,uphone,address,username,ucard,user_id
	user_id=Easp.Var("get.u_id")
	username=easp.var("post.username")
	ucard=easp.var("post.idcard")
	email=Easp.var("post.u_email")
	jg=Easp.var("post.u_jiguan")
	uphone=Easp.var("post.uphone")
	address=Easp.var("post.u_address")
	If easp.var("do")="edit" Then
	Dim cduinfo_all_up 
'	If name<>"" And email<>"" And jg<>"" And uphone<>"" Then
	'cduinfo_all_up = Easp.Db.Upd("cduserjiaoyuan", "realname= {username}, tel= {uphone} ,jg={post.u_jiguan}"userid=3")
	cduinfo_all_up = Easp.Db.Upd("cduserjiaoyuan", "realname= {username}, tel= {uphone} ,jiguan={post.u_jiguan},address1={post.u_address},card={post.idcard},UserEmail={post.u_email},sex={post.u_sex},birth={post.bir},month1={post.mon}","userid=3")
	Easp.Str.JsAlert("修改成功！")
	End If
%>

<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<style type="text/css">
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	background-color: #EEF2FB;
}
        <SCRIPT language=javascript>
function secBoard(n)
{
for(i=0;i<secTable.cells.length;i++)
secTable.cells[i].className="sec1";
secTable.cells[n].className="sec2";
for(i=0;i<mainTable.tBodies.length;i++)
mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}
          </SCRIPT>

</style>
<body>
<table width="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td width="17" valign="top" background="images/mail_leftbg.gif"><img src="images/left-top-right.gif" width="17" height="29" /></td>
    <td valign="top" background="images/content-bg.gif"><table width="100%" height="31" border="0" cellpadding="0" cellspacing="0" class="left_topbg" id="table2">
      <tr>
        <td height="31"><div class="titlebt">自定义区</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
     <!--**********在这里写入要展示的信息；**********-->
<form method="get" action="?do=chaxun">
	<div style="margin:50px;">
	    	<input type="text" name="u_id" ><input type="submit" id="searc" value="按编号查询">
		</div>
    <div style="height:400px; width:100%; margin-top: -90px;">
	    </form>
      
    	<form method="post" action="?do=edit">
    	<table align="center">
       		<tr>
            	<th colspan="2">会员基本信息</th>
            </tr>
           
            <tr> 
            	<td>姓名：</td>
                <td><input type="text" name="username" value="<%=rs("realname")%>" ></td>
            </tr>
            
            <tr>
            	<td>生日</td>
                <td>
                	<select width="10" name="bir">
	                	<option><%=rs("birth")%></option>
                    	<option value="1992">1992</option>
                		<option value="1991">1991</option>
                        <option value="1989">1989</option>
                        <option value="1994">1994</option>
                	</select>年
                    <select name="mon">
	                    <option><%=rs("month1")%></option>
                    	<option value="1">1</option>
                        <option value="2">2</option>
                        <option value="3">3</option>
                        <option value="4">4</option>
                        <option value="6">6</option>
                    </select>月
                </td>
            </tr>
            <tr>
            	<td>性别</td>
                <td> 
                	<span><%=rs("sex")%></span>
                	<input type="radio" name="u_sex" value="男" checked="checked">男
                    <input type="radio" name="u_sex" value="女">女
                </td>
            </tr>
             <tr>
            	<td>籍贯</td>
                <td> 
                	<input type="text" name="u_jiguan" value="<%=rs("jiguan")%>">
                </td>
            </tr>
            <tr>
            	<td>联系电话</td>
                <td>
                	<input type="tel" name="uphone" value="<%=rs("tel")%>">
                </td>
            </tr>
            <tr>
            	<td>邮箱地址</td>
            	<td>
            		<input type="email" name="u_email" value="<%=rs("UserEmail")%>">
            	</td>
            </tr>
            <tr>
            	<td>居住地址</td>
                <td>
                <input type="text" name="u_address" value="<%=rs("address1")%>">
                </td>
            </tr>
           
            <tr>
            	<td>身份证号码</td>
            	<td>
            		<input type="number" name="idcard" value="<%=rs("Card")%>">
            	</td>
            </tr>
             <tr>
            	<td colspan="2" align="right">
                	<input type="submit" value="提交" >
                    
                    </td>
            </tr>
           </table>   
          </form>
        
     </div>
   
   <!--*********end*********-->
    </td>
    <td background="images/mail_rightbg.gif">&nbsp;</td>
   </tr> 
  <tr>
    <td valign="bottom" background="images/mail_leftbg.gif"><img src="images/buttom_left2.gif" width="17" height="17" /></td>
    <td background="images/buttom_bgs.gif"><img src="images/buttom_bgs.gif" width="17" height="17"></td>
    <td valign="bottom" background="images/mail_rightbg.gif"><img src="images/buttom_right2.gif" width="16" height="17" /></td>
  </tr>  
</table>
</body>

<%easp.db.close(rs)%>

