<!--#include file="easyasp/easp.asp" -->
<!--清除缓存下-->
<%
Response.Buffer = True 
Response.ExpiresAbsolute = Now() - 1 
Response.Expires = 0 
Response.CacheControl = "no-cache" 
Response.AddHeader "Pragma", "No-Cache"
%>
<%
dim sql,rs
sql="select * from cduserjiaoyuan where userid =8"
set rs=easp.db.exec(sql)
%>
<%	
'Easp.Println Request.Form("sel2")
Easp.Println Easp.var("sel2")
Easp.Println Easp.Var("do")
If easp.var("do")="fudao" Then
	Dim fudaoinfo
	fudaoinfo=Easp.Db.Upd("cduserjiaoyuan","MyFirstJob={post.sel2},fudaofangshi={post.fdfs},gzdd={post.jgzdd},shoufei={post.shoufei1},gongzuoshijian={Post.gongzuosj},jingli={post.jingli2}","userid=8")
	
	
	Easp.Str.JsAlert("修改成功！")
	End if
%>
<link href="images/skin.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>

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
        <td height="31"><div class="titlebt">辅导信息</div></td>
      </tr>
    </table></td>
    <td width="16" valign="top" background="images/mail_rightbg.gif"><img src="images/nav-right-bg.gif" width="16" height="29" /></td>
  </tr>
  <tr>
    <td valign="middle" background="images/mail_leftbg.gif">&nbsp;</td>
    <td valign="top" bgcolor="#F7F8F9">
     <!--**********在这里写入要展示的信息；**********-->
     <div style="height:400px; width:100%; padding:30px;">
<form method="post" action="?do=fudao">
	<table>
		<tr style="vertical-align:top">
    		<th >可辅导科目：</th>
    		<td>
				<select name="sel2" id="sltTarget"  style="height:120px; width:140px" multiple="true" ondblclick="addItem()" datatype="selectItem">
					<option><%=rs("MyFirstJob")%></option>
				</select>
    		</td>
    		<td>
				<select id="sltSrc" style="height:120px; width:140px" multiple="true" ondblclick="removeItem()">
					<option value="学龄前课程">学龄前课程</option>
					<option value="小学全科">小学全科</option>
					<option value="小学数学">小学数学</option>
					<option value="小学英语">小学英语</option>
					<option value="小学语文">小学语文</option>
					<option value="小学奥数">小学奥数</option>
					<option value="初中全科">初中全科</option>
					<option value="初中数理化">初中数理化</option>
					<option value="初中数学">初中数学</option>
					<option value="初中物理">初中物理</option>
					<option value="初中化学">初中化学</option>
					<option value="初中英语">初中英语</option>
					<option value="初中语文">初中语文</option>
					<option value="初中奥数">初中奥数</option>
					<option value="高中文综">高中文综</option>
					<option value="高中理综">高中理综</option>
					<option value="高中全科">高中全科</option>
					<option value="高中数理化">高中数理化</option>
					<option value="高中数学">高中数学</option>
					<option value="高中物理">高中物理</option>
					<option value="高中化学">高中化学</option>
					<option value="高中英语">高中英语</option>
					<option value="高中语文">高中语文</option>
					<option value="高中生物">高中生物</option>
					<option value="高中地理">高中地理</option>
					<option value="高中历史">高中历史</option>
					<option value="大学全科">大学全科</option>
					<option value="大学高等数学">大学高等数学</option>
					<option value="大学英语四级">大学英语四级</option>
					<option value="大学英语六级">大学英语六级</option>
					<option value="大学英语八级">大学英语八级</option>
					<option value="大学专业课">大学专业课</option>
					<option value="新概念英语">新概念英语</option>
					<option value="剑桥英语">剑桥英语</option>
					<option value="GMAT">GMAT</option>
					<option value="GRE">GRE</option>
					<option value="LSAT">LSAT</option>
					<option value="TOEFL">TOEFL</option>
					<option value="微软证书">微软证书</option>
					<option value="中国CPA">中国CPA</option>
					<option value="美国CPA">美国CPA</option>
					<option value="雅思">雅思</option>
				</select>	
    		</td>
    	</tr>
    	<tr>
			<th>辅导方式：</th>
			<td><font size="2" color="blue"><%=rs("fudaofangshi")%></font></td>
			<td><input name="fdfs" type="checkbox" checked="true" value="本人上门"/>本人上门</td>
			<td><input name="fdfs" type="checkbox" value="对方上门"/>对方上门</td>
			
    	</tr>
    	<tr>
			<th>可辅导区域：</th>
			<td><%=rs("gzdd")%></td>
			<td>
				<input id="dq1" class="rt2 Validform_error" type="checkbox" nullmsg="请选择区域!" name="jgzdd" datatype="need2" value="成都市内">
				<label for="dq1">成都市内</label>
				<input id="dq2" class="rt2" type="checkbox" value="武侯区" name="jgzdd">
				<label for="dq2">武侯区</label>
				<input id="dq3" class="rt2" type="checkbox" value="锦江区" name="jgzdd">
				<label for="dq3">锦江区</label>
				<input id="dq4" class="rt2" type="checkbox" value="青羊区" name="jgzdd">
				<label for="dq4">青羊区</label>
				<br>
				<input id="dq5" class="rt2" type="checkbox" value="金牛区" name="jgzdd">
				<label for="dq5">金牛区</label>
				<input id="dq6" class="rt2" type="checkbox" value="高新区" name="jgzdd">
				<label for="dq6">高新区</label>
				<input id="dq7" class="rt2" type="checkbox" value="成华区" name="jgzdd">
				<label for="dq7">成华区</label>
				<input id="dq8" class="rt2" type="checkbox" value="新都" name="jgzdd">
				<label for="dq8">新都</label>
				<br>
				<input id="dq9" class="rt2" type="checkbox" value="双流" name="jgzdd">
				<label for="dq9">双流</label>
				<input id="dq10" class="rt2" type="checkbox" value="郫县" name="jgzdd">
				<label for="dq10">郫县</label>
				<input id="dq11" class="rt2" type="checkbox" value="温江" name="jgzdd">
				<label for="dq11">温江</label>
				<input id="dq12" class="rt2" type="checkbox" value="龙泉" name="jgzdd">
				<label for="dq12">龙泉</label>
				<input id="dq13" class="rt2" type="checkbox" value="其他" name="jgzdd">
				<label for="dq13">其他</label>
			</td>
			
    	</tr>	
    	<tr>
			<th>教学收费：</th>
			<td><%=rs("shoufei")%></td>
			<td>
				<select name="shoufei1">
					<option value="面议">面议</option>
					<option value="10/小时">10/小时</option>
					<option value="50/小时">50/小时</option>
					<option value="100/小时">100/小时</option>
					<option value="150/小时">150/小时</option>
				</select>
					
			</td>
    	</tr>
    	<tr>
			<th>工作时间：</th>
			<td><%=rs("gongzuoshijian")%></td>
			<td>
				<select name="gongzuosj">
					<option value="不限">不限</option>
					<option value="上午">上午</option>
					<option value="下午">下午</option>
					<option value="中午">中午</option>
					<option value="周末">周末</option>
				</select>
				</td>
    	</tr>
    	<tr>
    		<th>个人经历：</th>
    		<td style="width:40px";><font size="1"><%=rs("jingli")%></font></td>
    		<td>
				<textarea name="jingli2" cols="10" rows="10"></textarea>
    		</td>
    		
    	</tr>
    	<tr>
    		<td colspan="3" align="right">
                	<input type="submit" value="提交" >
    		</td>
    		
    	</tr>
	</table>
	<form>
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
<SCRIPT type="text/javascript">
	function removeItem(){
var sltSrc=document.getElementById('sltSrc');
var sltTarget=document.getElementById('sltTarget');
for(var i=0;i<sltSrc.options.length;i++)
{
var tempOption=sltSrc.options[i];
if(tempOption.selected){
sltSrc.removeChild(tempOption);
sltTarget.appendChild(tempOption);
}
}
}
function addItem(){
var sltSrc=document.getElementById('sltSrc');
var sltTarget=document.getElementById('sltTarget');
for(var i=0;i<sltTarget.options.length;i++)
{
var tempOption=sltTarget.options[i];
if(tempOption.selected){
sltTarget.removeChild(tempOption);
sltSrc.appendChild(tempOption);
}
}
}
</script>
</body>
<%easp.db.close(rs)%>