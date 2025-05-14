<!-- 
 * == 개정이력(Modification Information) ==
 *   
 *   수정일      			수정자           수정내용
 *  ============   	============== =======================
 *  2025. 3. 24.     	JYS            최초 생성
 *
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div class="sidebar" data-background-color="light">
  <div class="sidebar-logo">
    <!-- Logo Header -->
    <div class="logo-header" data-background-color="light">
      <a href="<c:url value='/${companyNo}/adminpage'/>" class="logo">
        <img
          src="${pageContext.request.contextPath }/resources/groupware/images/gruppeware.png"
          alt="navbar brand"
          class="navbar-brand"
          height="50"
          style="outline: none;"
        />
      </a>
      <div class="nav-toggle">
        <button class="btn btn-toggle toggle-sidebar">
          <i class="gg-menu-right"></i>
        </button>
        <button class="btn btn-toggle sidenav-toggler">
          <i class="gg-menu-left"></i>
        </button>
      </div>
      <button class="topbar-toggler more">
        <i class="gg-more-vertical-alt"></i>
      </button>
    </div>
    <!-- End Logo Header -->
  </div>
  <div class="sidebar-wrapper scrollbar scrollbar-inner">
    <div class="sidebar-content">
      <ul class="nav nav-secondary">
        <li class="nav-item active">
          <div class="collapse" id="dashboard">
            <ul class="nav nav-collapse">
              
            </ul>
          </div>
        </li>
        <li class="nav-section">
          <span class="sidebar-mini-icon">
            <i class="fa fa-ellipsis-h"></i>
          </span>
          <h4 class="text-section">관리자 페이지</h4>
        </li>
        <li class="nav-item">
		  <a data-bs-toggle="collapse" href="#recentMenu">
		    <i class="fas fa-history"></i>
		    <p>최근 사용한 메뉴</p>
		    <span class="caret"></span>
		  </a>
		  <div class="collapse show" id="recentMenu">
		    <ul class="nav nav-collapse" id="recent-menu-list">
		      <!-- JavaScript로 동적으로 삽입 -->
		    </ul>
		  </div>
		</li>
        <li class="nav-item">
        	<a href="<c:url value='/${companyNo }/adminpage'/>">
            	<i class="fas fa-cogs"></i>
        		<p>서비스 정보</p>
          	</a>
        </li>
<!--         <li class="nav-item"> -->
<!--           <a data-bs-toggle="collapse" href="#security"> -->
<!--             <i class="fas fa-shield-alt"></i> -->
<!--             <p>보안관리</p> -->
<!--             <span class="caret"></span> -->
<!--           </a> -->
<!--           <div class="collapse" id="security"> -->
<!--             <ul class="nav nav-collapse"> -->
<!--               <li><a href="#">로그인</a></li> -->
<!-- 	          <li><a href="#">비밀번호</a></li> -->
<!-- 	          <li><a href="#">멤버 접근 로그</a></li> -->
<!-- 	          <li><a href="#">관리자 권한 설정</a></li> -->
<!--             </ul> -->
<!--           </div> -->
<!--         </li> -->
        <li class="nav-item">
           	 <a data-bs-toggle="collapse" href="#organ">
	          	<i class="fas fa-users"></i>
	          	<p>조직 관리</p>
	          	<span class="caret"></span>
	         </a>
              	<div class="collapse" id="organ">
	                <ul class="nav nav-collapse">
	                  <li><a href="<c:url value='/${companyNo}/organization/admin/organizationList'/>">부서관리</a></li>
	                  <li><a href="<c:url value='/${companyNo}/employee/admin/list'/>">멤버통합관리</a></li>
	                  <li><a href="<c:url value='/${companyNo}/position/admin/positionList'/>">직위체계</a></li>
	                  <li><a href="<c:url value='/${companyNo}/department/bulkInsertForm'/>" />부서 일괄등록</a></li>
	                </ul>
              	</div>
       	</li>
       	<li class="nav-item">
       	 	<a data-bs-toggle="collapse" href="#appr">
          		<i class="fas fa-file-signature"></i>
          		<p>전자결재</p>
          		<span class="caret"></span>
         	</a>
             	<div class="collapse" id="appr">
                <ul class="nav nav-collapse">
                  <li><a href="<c:url value='/${companyNo}/approval/admin/docFormList'/>">결재양식</a></li>
                  <li><a href="<c:url value='/${companyNo}/approval/admin/apprLineAutoList'/>">자동결재선</a></li>
                  <li><a href="<c:url value='/${companyNo}/approval/admin/docmangement'/>">결재문서 관리</a></li>
                  <li><a href="#" />전자결재 일자별 통계</a></li>
                  <li><a href="#" />전자결재 부서별 통계</a></li>
                </ul>
              </div>
       	</li>
       	
<!--         <li class="nav-item"> -->
<!--           <a data-bs-toggle="collapse" href="#organization"> -->
<!--             <i class="fas fa-folder-open"></i> -->
<!--             <p>메뉴관리</p> -->
<!--             <span class="caret"></span> -->
<!--           </a> -->
<!--           <div class="collapse" id="organization"> -->
<!--             <ul class="nav nav-collapse"> -->
              
<!--               <li><a href="#">공지사항</a></li> -->
<!--               <li><a href="#">문서 관리</a></li> -->
<!--               <li><a href="#">일정 관리</a></li> -->
<!--               <li><a href="#">예약</a></li> -->
<!--               <li><a href="#">근태 관리</a></li> -->
<!--               <li><a href="#">설문</a></li> -->
<!--               <li><a href="#">공유 프로젝트</a></li> -->
<!--               <li><a href="#">웹하드</a></li> -->
<!--               <li><a href="#">주소록</a></li> -->
<!--               <li><a href="#">커뮤니티</a></li> -->
<!--             </ul> -->
<!--           </div> -->
<!--         </li> -->
      </ul>
    </div>
  </div>
</div>

<script>
  // 화살표 아이콘을 클릭할 때마다 오른쪽과 아래 화살표를 토글하는 코드
  document.querySelectorAll('.toggle-arrow').forEach(item => {
    item.addEventListener('click', function() {
      const arrow = this.querySelector('.arrow');
      if (arrow.classList.contains('fa-chevron-right')) {
        arrow.classList.remove('fa-chevron-right');
        arrow.classList.add('fa-chevron-down');
      } else {
        arrow.classList.remove('fa-chevron-down');
        arrow.classList.add('fa-chevron-right');
      }
    });
  });
</script>

<script src="${pageContext.request.contextPath }/resources/groupware/js/sidebar.js"></script>
<script src="${pageContext.request.contextPath }/resources/groupware/js/admin/adminSidebar.js"></script>