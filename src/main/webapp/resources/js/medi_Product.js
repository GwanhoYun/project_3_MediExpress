
   // 삭제 모드 토글
   function toggleDeleteMode() {
       const buttons = document.getElementsByClassName("actionButton");
       for (let i = 0; i < buttons.length; i++) {
           if (buttons[i].innerText === "수정") {
               buttons[i].innerText = "삭제";
               buttons[i].onclick = function() {
                   var mediNo = this.getAttribute("data-id");
                   var result = confirm("코드번호\""+mediNo+"\"번을 정말로 삭제 하시겠습니까?");
                   if(result){
                       $.ajax({
                           url: '/deleteMediProducts',
                           type: 'POST',
                           contentType: 'application/json',
                           data: JSON.stringify([{ mediNo: mediNo }]),
                           success: function(data) {
                               alert('삭제성공');
                               window.location.reload();
                           },
                           error: function(jqXHR, textStatus, errorThrown) {
                               alert('삭제 실패');
                               console.error('Error:', errorThrown,mediNo);
                           }
                       });
                   } else {
                       window.location.reload();
                   }
               };
           } else {
               buttons[i].innerText = "수정";
               buttons[i].onclick = function() {
                   editRow(this);
               };
           }
       }
   }

   // 행 추가
   function addRow() {
	    const table = document.getElementById("dataTable").getElementsByTagName('tbody')[0];
	    const newRow = table.insertRow();
	    for (let i = 0; i < 6; i++) {
	        const newCell = newRow.insertCell(i); //가로로 새로운 셀 생성 변수
	        const input = document.createElement("input");//input 속성 부여
	        input.type = i === 3 ? "date" : "text"; // 3번째 컬럼은 날짜 입력 필드로 설정
	        input.classList.add("input-field");
	        newCell.appendChild(input);
	    }

	    // 6번째 셀에 저장 버튼 추가
	    const actionCell = newRow.insertCell(6);
	    const saveButton = document.createElement("button");
	    saveButton.textContent = "저장";
	    saveButton.onclick = function() {
	        saveNewRow(newRow);
	    };
	    actionCell.appendChild(saveButton);
	    
	    const remarkCell = newRow.insertCell(7);
	    const remarkInput = document.createElement("input");
	    remarkInput.type = "text";
	    remarkInput.disabled = true;
	    remarkCell.appendChild(remarkInput);
	}


   // 수정 버튼 함수
   function editRow(button) {
    const row = button.parentNode.parentNode;
    const cells = row.getElementsByTagName('td');
    
    for (let i = 0; i < cells.length - 2; i++) {
        const cell = cells[i];
        const input = document.createElement('input');
        input.type = i === 3 ? 'date' : 'text';
        input.classList.add("input-field");
        
        // 기존 값 설정
        if (i === 3) { // 날짜 필드
            const dateValue = new Date(cells[i].innerText);
            const year = dateValue.getFullYear();
            const month = String(dateValue.getMonth() + 1).padStart(2, '0');
            const day = String(dateValue.getDate()).padStart(2, '0');
            input.value = `${year}-${month}-${day}`;
        } else {
            input.value = cells[i].innerText;
        }

        cell.innerHTML = '';
        cell.appendChild(input);
    }
    button.textContent = '저장';
    button.onclick = function() {
        saveRow(row);
    };
}

     

   // 수정된 행 저장 함수
   function saveRow(row) {
       const cells = row.getElementsByTagName('td');
       const rowData = {
           mediNo: cells[0].getElementsByTagName('input')[0].value,
           mediName: cells[1].getElementsByTagName('input')[0].value,
           mediTotal: cells[2].getElementsByTagName('input')[0].value,
           mediIndate: cells[3].getElementsByTagName('input')[0].value,
           mediCompany: cells[4].getElementsByTagName('input')[0].value,
           mediSafetyInven: cells[5].getElementsByTagName('input')[0].value
       };

       console.log('Updating data:', rowData);

       $.ajax({
           url: '/updateMediProduct',
           type: 'POST', // PUT 대신 POST 사용
           contentType: 'application/json',
           data: JSON.stringify(rowData),
           success: function(data) {
               alert('수정 성공');
               window.location.reload();
           },
           error: function(jqXHR, textStatus, errorThrown) {
               alert('수정 실패');
               console.error('Error:', textStatus, errorThrown);
           }
       });
   }

   // 추가된 행 저장 함수
   function saveNewRow(row) {
       const cells = row.getElementsByTagName('td');
       const rowData = {
           mediNo: cells[0].getElementsByTagName('input')[0].value,
           mediName: cells[1].getElementsByTagName('input')[0].value,
           mediTotal: cells[2].getElementsByTagName('input')[0].value,
           mediIndate: cells[3].getElementsByTagName('input')[0].value,
           mediCompany: cells[4].getElementsByTagName('input')[0].value,
           mediSafetyInven: cells[5].getElementsByTagName('input')[0].value
       };

       console.log('Saving new data:', rowData);

       $.ajax({
           url: '/saveMediProducts',
           type: 'POST',
           contentType: 'application/json',
           data: JSON.stringify([rowData]),
           success: function(data) {
               alert('저장 성공');
               window.location.reload();
           },
           error: function(jqXHR, textStatus, errorThrown) {
               alert('저장 실패');
               console.error('Error:', errorThrown);
           }
       });
   }
