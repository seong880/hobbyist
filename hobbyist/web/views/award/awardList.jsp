                                                    <%@ page
	language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.hobbyist.award.model.vo.*"%>
<%@ include file="/views/common/header.jsp"%>

<%
	//Award aa = (Award)request.getAttribute("award");
	//List<AwardComment> comments= (List) request.getAttribute("comments");

	List<Award> list = (List) request.getAttribute("list");
	int cPage = (int) (request.getAttribute("cPage"));
	int numPerPage = (int) request.getAttribute("numPerPage");
	String pageBar = (String) request.getAttribute("pageBar");
	String searchType = (String) request.getAttribute("searchType");
	String searchKeyword = (String) request.getAttribute("searchKeyword");
	if (searchKeyword == null)
		searchKeyword = "";
	if (searchType == null)
		searchType = "newUp";
%>

<section id="award">
	<div class="award_content">
		
		<div id="award_right">
			<h3>AWARD</h3><p>자신의 취미를 자랑해보세요~ 하비스트 어워드!</p>
			<%if(logginMember!=null){ %>
					<div class="award_bottom2">
						<button type="button" id="btn_add" onclick="fn_awardForm()">어워드 참여하기</button>
					</div>
				<%}%>
			<div class="award_top">
				<form name = searchFrm action="<%=request.getContextPath()%>/award/awardSearch" method="post">
					<div class="sort">
						<input type="hidden" name="searchType" value="<%=searchType%>"/>
						<input type="hidden" name="cPage" value="<%=cPage%>"/>
						<input type="hidden" name="numPerPage" value="<%=numPerPage%>"/>
						<div id="newUp" class="awardSortBtn" onclick="sortBtn(this)">최근 등록순</div>
						<div id="viewsUp" class="awardSortBtn" onclick="sortBtn(this)">조회수 높은순</div>
						<div id="LikeUp" class="awardSortBtn" onclick="sortBtn(this)">추천 높은순</div>
					</div>
				<div class="searchForm">
						게시물&nbsp;&nbsp;&nbsp;<input type="search" placeholder="Search..." name="searchKeyword" value="<%=searchKeyword%>">
						<button type="submit"><img src="<%= request.getContextPath() %>/images/search.png" width="70%"></button>
					</div>
				</form>
				</div>

			<div class="award_middle">
				<%for (Award a : list) {%>
				<div class="award_imgbox">
					<div class="award_img">
						<a href="<%=request.getContextPath()%>/award/awardView?awardNo=<%=a.getAwardNo()%>">
							<img src="<%=request.getContextPath()%>/upload/award/images/<%=a.getAwardOriginalFilename()%>" width=220px height=220px>
						</a>
					</div>
					<a href="<%=request.getContextPath()%>/award/awardView?awardNo=<%=a.getAwardNo()%>">	
					<div class="award_img_hover1">
							<img src="<%=request.getContextPath()%>/images/outline_like.png" width="24px"><%=a.getLikeCount() %>
							<img src="<%=request.getContextPath()%>/images/outline_read.png" width="24px"><%=a.getReadCount() %>
					</div>
					</a>
				</div>
				<%}%>
				<script>
					var box = $('.award_imgbox');
					var box_hover = $('.award_img_hover1');
					box.on('mouseover', function() {
						box_hover.eq($(this).index()).css({"display":"block", "transition":"400ms"});
					});
					
					box.on('mouseleave', function() {
						box_hover.css("display","none");
					});
				</script>
			</div>
			<div class="award_bottom" style="color:#8e9181" font-size='13px'>
			<br><p align="center"><%=pageBar%></p></div>
		
		
		</div>	
	</div>
		
	</div>


	<script>
		function fn_awardForm(){
			location.href="<%=request.getContextPath()%>/award/awardForm";
		}
		
		function sortBtn(e) {
			if(e.innerText == '최근 등록순') {
				$('[name = searchType]').val("newUp");
				$('[name = searchFrm]').submit();
			} else if( e.innerText == "조회수 높은순") {
				
				$('[name = searchType]').val("viewsUp");
				$('[name = searchFrm]').submit();
			} else if( e.innerText == "추천 높은순") {
				$('[name = searchType]').val("LikeUp");
				$('[name = searchFrm]').submit();
			}
		}
		
		
		/* $(function(){
		
			var award_img_hover1 = $('.award_img_hover1');
			award_img_hover1.hover(function(){
				award_img_hover1.css('display','block');
			});
		}); */
	</script>




</section>

<%@ include file="/views/common/footer.jsp"%>
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        
