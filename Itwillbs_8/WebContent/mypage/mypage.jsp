<%@page import="vo.ProductBean"%>
<%@page import="dao.product.ProductDAO"%>
<%@page import="vo.CommBean"%>
<%@page import="vo.DetailOrderBean"%>
<%@page import="java.util.HashMap"%>
<%@page import="vo.OrderBean"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="/inc/header.jsp" />
<!-- QuickMenu -->
<jsp:include page="../quickMenu.jsp" />
<%
	MemberBean member = new MemberBean(); 

	ArrayList<OrderBean> mainorderList = new ArrayList<OrderBean>();
	HashMap<String, ArrayList<DetailOrderBean>> detailorderList = new HashMap<String, ArrayList<DetailOrderBean>>();
	ArrayList<DetailOrderBean> detailorderSubList = new ArrayList<DetailOrderBean>();
	ArrayList<CommBean> articleList = new ArrayList<CommBean>();
	
	member = (MemberBean) request.getAttribute("member");
	
	mainorderList = (ArrayList) request.getAttribute("mainorderList");
	detailorderList = (HashMap) request.getAttribute("detailorderList");
	
	articleList = (ArrayList) request.getAttribute("articleList");	
	
	ArrayList<ProductBean> productList = (ArrayList) request.getAttribute("productList");
%>


<!-- breadcrumb -->
<div class="container">
	<div class="bread-crumb flex-w p-l-25 p-r-15 p-t-30 p-lr-0-lg">
		<a href="Main.go" class="stext-109 cl8 hov-cl1 trans-04"> Home
			<i class="fa fa-angle-right m-l-9 m-r-10" aria-hidden="true"></i>
		</a> <span class="stext-109 cl4"> My Page </span>
	</div>
</div>

<link type="text/css" rel="stylesheet" href="css/common.css" />
<link type="text/css" rel="stylesheet" href="css/mp_main.css" />
<link type="text/css" rel="stylesheet" href="css/header.css" />
<link type="text/css" rel="stylesheet" href="css/menu_2.css" />
<!-- Shoping Cart -->


<div id="contentWrapper">
	<div id="contentWrap">

		<div id="aside">
			<h2 class="aside-tit">MY PAGE</h2>
			<div class="lnb-wrap">
				<div class="lnb-bx">
					<h2 class="txt txt1">SHOPPING INFO</h2>
					<div class="lnb">
						<ul>
							<li class="first"><a href="MyOrderList.or">????????????</a></li>
							<li><a href="ProductMylikeList.po">?????? ?????? ??????</a></li>
							<li><a href="ProductMyreviewList.po">?????? ??? ??????</a></li>
							<li><a href="ProductMyqnaList.po">?????? QnA</a></li>
						</ul>
					</div>
				</div>
				<div class="lnb-bx">
					<h2 class="txt txt2">COMMUNITY INFO</h2>
					<div class="lnb">
						<ul>
							<li class="first"><a href="MycommList.co">??? ????????? ??????</a></li>
							<li><a href="MybookmarkList.co">??? ?????????</a></li>
							<li><a href="MycommReplyList.co">?????? ??? ??????</a></li>
						</ul>
					</div>
				</div>
				<div class="lnb-bx">
					<h2 class="txt txt3">CUSTOMER INFO</h2>
					<div class="lnb">
						<ul>
							<li class="first"><a href="MemberModifyForm.mo">??????????????????</a></li>
							<li><a href="MyAddress.ad">????????? ??????</a></li>
							<li><a href="MemberDeleteForm.mo">??????????????????</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- .lnb-wrap -->
		</div>
		<!-- #aside -->
		<hr>
		<div id="content">
			<div id="mypage">
				<div class="page-body">
					<!-- ?????? ?????? -->
					<div class="info">
						<div class="user">
							<div class="user-img">
							<%
							if(member.getImg() == null) {
								%>
								<img alt="profileImg" src="upload/memberUpload/<%=member.getImg()%>" onerror="this.style.display='none'">
								<%
							} else if(member.getImg().contains("http://") || member.getImg().contains("https://")) {
								%>
								<img alt="" src="<%=member.getImg()%>">
								<%
							} else {
							%>
								<img alt="profileImg" src="upload/memberUpload/<%=member.getImg()%>" onerror="this.style.display='none'">
								<% } %>
							</div>
							<div class="user-info">
								<p>
									<b><%=member.getUsername() %></b> [<span id="MK_user_id"><%=member.getId() %></span>]???
									  &nbsp;&nbsp;&nbsp; <a href="MemberModifyForm.mo" class="CSSbuttonWhite CSSbuttonMin">EDIT</a>
								</p>
								<div class="box">
									<dl>
										<dt>?????? ??????</dt>
										<dd><%=member.getDate() %></dd>
									</dl>
									<dl>
										<dt>??? &nbsp;&nbsp;&nbsp; ???</dt>
										<dd><%=member.getPhone() %></dd>
									</dl>
									<dl>
										<dt>??? ??? ???</dt>
										<dd>
											<span id="MK_user_email"><%=member.getEmail() %></span>
										</dd>
									</dl>
<!-- 									<dl> -->
<!-- 										<dt>??? &nbsp;&nbsp;&nbsp; ???</dt> -->
<!-- 										<dd>??????...??????????????????.......1. ??????????????? 2. ???????????? -> ????????? ?????? ??????</dd> -->
<!-- 									</dl> -->
								</div>
							</div>
						</div>
						<dl class="order">
							<dt>??? ????????????</dt>
							<dd style="width: 300px">
							<%
							int totalpr = 0;
							for(OrderBean o: mainorderList) {
								totalpr += o.getTotal_price();
							}
							%>
								<span><%=totalpr %> </span>???
							</dd>
							<dt>?????? ??????</dt>
							<dd style="width: 300px"><span><%=mainorderList.size() %> </span>???</dd>
							<dt>????????? ???</dt>
							<dd style="width: 300px"><span><%=articleList.size() %> </span>???</dd>
						</dl>
					</div>
					<!-- //?????? ?????? -->

					<!-- ?????? ?????? ?????? -->
<!-- 					<div class="grp"> -->
<!-- 						<p> -->
<!-- 							???????????? [BRONZE]???????????????.<br> -->
<!-- 						</p> -->
<!-- 					</div> -->
					<!-- //?????? ?????? ?????? -->


					<!-- ?????? ?????? ?????? -->
					<div class="hd">
						<h3>?????? ?????? ??????</h3>
						<a class="view fe" href="MyOrderList.or">+ MORE</a>
					</div>
					<div class="tbl">
						<table summary="????????????, ?????????, ????????????, ????????????">
							<caption>?????? ?????? ?????? ??????</caption>
							<colgroup>
								<col width="150">
								<col width="*">
								<col width="140">
								<col width="140">
							</colgroup>
							<thead>
								<tr>
									<th><div class="tb-center">??????</div></th>
									<th><div class="tb-center">PRODUCT</div></th>
									<th><div class="tb-center">COST</div></th>
									<th><div class="tb-center">DETAIL</div></th>
								</tr>
							</thead>
							
							<tbody>
								<tr>
								<%
								if(mainorderList.size() == 0) {
									%>
									<td colspan="4" style="padding:50px 20px; text-align:center; font-size: 15px;">
            	   						<span> ?????? ????????? ????????? ???????????? </span></td>
									<%
								} else {
									detailorderSubList = detailorderList.get(mainorderList.get(mainorderList.size()-1).getCode());
									OrderBean orderBean = mainorderList.get(mainorderList.size()-1);
								%>
									<td><div class="tb-center"><%=orderBean.getDate() %></div></td>
									<td><div class="tb-center">
									<%
									for(int i=0; i<detailorderSubList.size(); i++) {
										DetailOrderBean detailOrderBean = detailorderSubList.get(i);
									
									%>
										<a href="MyOrderList.or"
											class="tb-bold"> <%=detailOrderBean.getName()%>
											<br>?????? : <%=detailOrderBean.getColor() %> <%=detailOrderBean.getCnt() %>???
										</a><br>
									<% } %>
									</div> </td>
									<td><div class="tb-center"><%=orderBean.getTotal_price() %></div></td>
									<td><div class="tb-center">
									<a class="view fe" href="MyOrderList.or">+ MORE</a></div></td>
								<% } %>
								</tr>
							</tbody>
<!-- 							<tbody> -->
<!-- 								<tr> -->
<!-- 									<td colspan="4"><div class="tb-center">?????? ????????? ????????????.</div></td> -->
<!-- 								</tr> -->
<!-- 							</tbody> -->
						</table>
					</div>
					<!-- //?????? ?????? ?????? -->

					<!-- ?????? ?????? ????????? -->
					<div class="hd">
						<h3>?????? ?????? ?????????</h3>
						<a class="view fe" href="MycommList.co">+ MORE</a>
					</div>
					<div class="lst">
						<div class="item-wrap">
							<div class="item-cont"></div>
														
					<table>
							<%
if(articleList.size() == 0) {
	%>
	<tr><td colspan="4" style="padding:50px 20px; text-align:center; font-size: 15px;">
		<span> ????????? ???????????? ???????????? <br><br>
		<a href='CommList.co'>???????????? ????????? ?????????!</a></span>
		
	</td></tr>
	<%
} else {
	%><tr style="height: 400px"><%
	
	for(int i=articleList.size()-1;i > articleList.size()-5; i--) {
		if(i < 0) break;
		CommBean article = articleList.get(i);
		
		%><td onclick="location.href='CommDetail.co?num=<%=article.getNum()%>'">
			<img alt="productImg" src="upload/commUpload/<%=article.getImg()%>" width="250px" height="250px"
				onerror="src='loading.png'"><br>
			<span class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><%=article.getSubject() %></span>
			<span class="stext-105 cl3"><%=article.getReadCount() %></span><br>
			<span class="tb-center"><%=article.getDate() %></span>
		</td><%
	}
	%></tr><%
}
%>
						</table>
					</div>
					<!-- //?????? ?????? ????????? -->

					<!-- ?????? ?????? ?????? -->
					<div class="hd">
						<h3>?????? ?????? ??????</h3>
						<a class="view fe" href="ProductMylikeList.po">+ MORE</a>
					</div>
					<div class="lst">
						<div class="item-wrap">
							<div class="item-cont"></div>
														
							<table>
							<%
if(productList.size() == 0) {
	%>
	<tr><td colspan="4" style="padding:50px 20px; text-align:center; font-size: 15px;">
		<span>???????????? ????????? ????????????.</span>
		
	</td></tr>
	<%
} else {
	%><tr style="height: 400px"><%
	
	for(int i=productList.size()-1;i > productList.size()-5; i--) {
		if(i < 0) break;
		ProductBean product = productList.get(i);
		
		String[] img = product.getMain_img().split("/");
		%><td onclick="location.href='ProductDetail.po?basicCode=<%=product.getBasicCode()%>'">
			<img alt="productImg" src="upload/productUploadImg/<%=img[0]%>" width="250px" height="250px"
				onerror="src='loading.png'"><br>
			<span class="stext-104 cl4 hov-cl1 trans-04 js-name-b2 p-b-6"><%=product.getName() %></span>&nbsp;&nbsp;&nbsp;
			<span class="stext-105 cl3"><%=product.getPrice() %></span>
		</td><%
	}
	%></tr><%
}
%>
							</table>
						</div>
					</div>
					<!-- //?????? ?????? ?????? -->

				</div>
				<!-- .page-body -->
			</div>
			<!-- #mypage -->
		</div>
		<!-- #content -->
	</div>
	<!-- #contentWrap -->
</div>






<!-- Shoping Cart ??? -->







<jsp:include page="/inc/footer.jsp" />