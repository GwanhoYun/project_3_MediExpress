 // 총 가격에 따라 적립 포인트 계산하는 함수
    function calculateSavingPoints() {
        const priceElements = document.querySelectorAll('.price');
        priceElements.forEach(priceElement => {
            const price = parseInt(priceElement.textContent.replace(/,/g, ''), 10);
            const points = Math.floor(price * 0.05); // 예: 총 가격의 5%
            const pointElement = priceElement.closest('.item_info').querySelector('.saving_point');
            pointElement.textContent = points.toLocaleString(); // 포인트를 세자리수 콤마로 표시
        });
    }
    // DOM이 로드된 후 함수 실행
    document.addEventListener('DOMContentLoaded', calculateSavingPoints);