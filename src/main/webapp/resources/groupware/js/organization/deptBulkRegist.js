/** 
 * <pre>
 * << 개정이력(Modification Information) >>
 *   
 *   수정일      			수정자           수정내용
 *  -----------   	-------------    ---------------------------
 * 2025. 4. 8.     	JSW            최초 생성
 *
 * </pre>
 */
$(function () {
    $("#uploadBtn").on("click", function () {
        const fileInput = $("#excelFile")[0];
        if (!fileInput.files.length) {
            showToast("파일을 선택해주세요.", "warning");
            return;
        }

        const formData = new FormData();
        formData.append("file", fileInput.files[0]);


        $.ajax({
            url: contextPath + `/${companyNo}/department/bulkInsertExcel`,
            type: "POST",
            data: formData,
            processData: false,
            contentType: false,
            success: function (deptList) {
                const tbody = $("#resultTableBody");
                tbody.empty();

                if (!deptList || deptList.length === 0) {
                    tbody.append("<tr><td colspan='7'>등록된 데이터가 없습니다.</td></tr>");
                    showToast("등록된 데이터가 없습니다.", "info");
                    return;
                }

                deptList.forEach(function (dept) {
                    const row = `
                        <tr>
                            <td class="status-box">${dept.status || "성공"}</td>
                            <td>${dept.deptCd || ""}</td>
                            <td>${dept.parentDeptCd || ""}</td>
                            <td>${dept.deptName || ""}</td>
                            <td>${dept.managerEmpId || ""}</td>
                            <td>${dept.createAt || ""}</td>
                            <td>${dept.companyNo || ""}</td>
                        </tr>`;
                    tbody.append(row);
                });

                showToast("엑셀 업로드 및 등록 완료!", "success");
            },
            error: function () {
                showToast("등록 실패. 관리자에게 문의하세요.", "error");
            }
        });
    });
});

// SweetAlert2 Toast 함수
function showToast(message, icon = 'info') {
    Swal.fire({
        toast: true,
        position: 'top',
        icon: icon,
        title: message,
        showConfirmButton: false,
        timer: 2500,
    });
}