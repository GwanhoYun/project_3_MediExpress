function listOnOff(){
    const itemList = document.querySelector('.option_list');
    itemList.style.display = (itemList.style.display === "none" || itemList.style.display === "") ? "block" : "none";
}

let cart = [];
let totalPrice = 0;

function selectOption(option) {
    const itemName = option.getAttribute('data-name');
    const itemPrice = parseInt(option.getAttribute('data-price'), 10);

    // 중복 아이템 확인
    const existingItem = cart.find(item => item.name === itemName);
    if (existingItem) {
        // 수량 증가
        existingItem.count += 1;
        // 총 가격 갱신
        totalPrice += itemPrice;
    } else {
        // 새 아이템 추가
        cart.push({
            name: itemName,
            price: itemPrice,
            count: 1
        });
        // 총 가격 갱신
        totalPrice += itemPrice;
    }

    // 옵션 목록 토글
    listOnOff();
    
    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}


function updateCart() {
    const cartContainer = document.querySelector('.cart_container');
    cartContainer.innerHTML = '';

    if (cart.length === 0) {
        cartContainer.innerHTML = '<p>장바구니에 아이템이 없습니다.</p>';
        return;
    }

    cart.forEach((item, index) => {
        const itemDiv = document.createElement('div');
        itemDiv.classList.add('cart_item');
        // cart_item클래스 생성 후 html 값을 넣음.
        itemDiv.innerHTML = `
            <div>
                <p class="item_name" >${item.name}</p>
                <label for="item_count_${index}"></label>
            </div>
            <div class="item_number">
                <input type="number" id="item_count_${index}" value="${item.count}" min="1" max="99" onchange="updateItemCount(${index}, this.value)">
            </div>
            <div>
                <p class="item_price">${item.price * item.count}원</p>
                <button onclick="removeItem(${index})">
                    <div></div>
                    <div></div>
                </button>
            </div>
        `;
        cartContainer.appendChild(itemDiv);
    });
}


function updateItemCount(index, newCount) {
    const item = cart[index];
    const oldCount = item.count;
    const newCountInt = parseInt(newCount, 10);

    if (isNaN(newCountInt) || newCountInt < 1) {
        // 새로운 수량이 숫자가 아니거나 1보다 작은 경우
        alert('수량은 1 이상의 숫자여야 합니다.');
        return;
    }

    item.count = newCountInt;

    // 총 가격 갱신
    totalPrice += (item.count - oldCount) * item.price;

    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}


function removeItem(index) {
    const item = cart[index];
    totalPrice -= item.price * item.count;
    cart.splice(index, 1);

    // 장바구니와 총 가격 업데이트
    updateCart();
    updateTotalPrice();
}

function updateTotalPrice() {
    const totalPriceElement = document.getElementById('total_price');
    totalPriceElement.textContent = totalPrice;
}

document.addEventListener('click', function(event) {
    const listOnOff = document.querySelector('.option_list');
    const selectBtn = document.querySelector('.select_btn');

    if (listOnOff.style.display === 'block' && !listOnOff.contains(event.target) && !selectBtn.contains(event.target)) {
        listOnOff.style.display = 'none';
    }
});


function gatherCartData() {
    const cartItems = [];
    const productId = document.getElementById('product-info').getAttribute('data-id');

    document.querySelectorAll('.cart_item').forEach((itemDiv, index) => {
        const itemName = itemDiv.querySelector('.item_name').textContent;
        const itemCount = itemDiv.querySelector(`#item_count_${index}`).value;
        const itemPrice = itemDiv.querySelector('.item_price').textContent.replace('원', '');

        cartItems.push({
            id: productId,  // ID 값을 각 항목에 추가
            name: itemName.trim(),
            count: parseInt(itemCount, 10),
            price: parseInt(itemPrice, 10)
        });
    });

    return cartItems;
}
function loginplz(){
	alert("로그인 해주세요!");
}



//결제 화면으로 이동
function payment(){
	const cartItems = gatherCartData();

    // 로그인 사용자 ID를 요청 데이터에 추가
    cartItems.forEach(item => {
        item.userId = loginUserId;
    });

    console.log("Request Payload:", cartItems); // 요청 데이터 확인

    fetch('/paymentNow', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(cartItems)
    })
    .then(response => {
        if (response.ok) {

                window.location.href = '/productpayment'; // 결제 페이지로 이동

        } else {
            response.text().then(text => {
                console.error('Error:', text);
                alert('구매 처리 중 오류가 발생했습니다.');
            });
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('구매 처리 중 오류가 발생했습니다.');
    });
}


//-------------------------------------------------------------------------------------

function shoppingBasket() {
    const cartItems = gatherCartData();

    // 로그인 사용자 ID를 요청 데이터에 추가
    cartItems.forEach(item => {
        item.userId = loginUserId;
    });

    console.log("Request Payload:", cartItems); // 요청 데이터 확인

    fetch('/buyNow', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify(cartItems)
    })
    .then(response => {
        if (response.ok) {
            const check = confirm("장바구니에 상품을 담았습니다. 장바구니 페이지로 이동하시겠습니까?");
            if (check) {
                window.location.href = '/productBuyPage'; // 장바구니 페이지로 이동
            } else {
                location.reload(true); // 현재 페이지 새로고침
            }
        } else {
            response.text().then(text => {
                console.error('Error:', text);
                alert('구매 처리 중 오류가 발생했습니다.');
            });
        }
    })
    .catch(error => {
        console.error('Error:', error);
        alert('구매 처리 중 오류가 발생했습니다.');
    });
}




