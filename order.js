// Mock data for demonstration purposes
const mockOrderDetails = {
    '#ORD001': {
        orderId: '#ORD001',
        customerName: 'Nguyễn Văn A',
        orderDate: '10/05/2025',
        paymentMethod: 'COD',
        status: 'completed',
        totalAmount: '1,500,000đ',
        items: [
            { name: 'Áo cổ phục Huế', quantity: 1, price: '750,000đ', total: '750,000đ' },
            { name: 'Bánh bèo Huế', quantity: 5, price: '150,000đ', total: '750,000đ' }
        ]
    },
    '#ORD002': {
        orderId: '#ORD002',
        customerName: 'Trần Thị B',
        orderDate: '09/05/2025',
        paymentMethod: 'Chuyển khoản',
        status: 'shipping',
        totalAmount: '2,800,000đ',
        items: [
            { name: 'Mì Quảng', quantity: 2, price: '400,000đ', total: '800,000đ' },
            { name: 'Cao lầu Hội An', quantity: 4, price: '500,000đ', total: '2,000,000đ' }
        ]
    }
};

// Status badge mapping
const statusBadgeClasses = {
    'pending': 'badge-info',
    'confirmed': 'badge-primary',
    'shipping': 'badge-warning',
    'completed': 'badge-success',
    'cancelled': 'badge-danger'
};

const statusVietnamese = {
    'pending': 'Chờ xử lý',
    'confirmed': 'Đã xác nhận',
    'shipping': 'Đang giao hàng',
    'completed': 'Đã hoàn thành',
    'cancelled': 'Đã hủy'
};

// Handle view order details
document.addEventListener('DOMContentLoaded', function() {
    // Add click event listeners to all detail buttons
    document.querySelectorAll('.btn-info[title="Chi tiết"]').forEach(button => {
        button.addEventListener('click', function() {
            const row = this.closest('tr');
            const orderId = row.querySelector('td:first-child').textContent;
            showOrderDetails(orderId);
        });
    });

    // Handle order status update
    document.getElementById('updateOrderStatus').addEventListener('click', function() {
        const orderId = document.getElementById('modalOrderId').textContent;
        const newStatus = document.getElementById('modalOrderStatus').value;
        updateOrderStatus(orderId, newStatus);
    });
});

function showOrderDetails(orderId) {
    const orderData = mockOrderDetails[orderId];
    if (!orderData) return;

    // Update modal content
    document.getElementById('modalOrderId').textContent = orderData.orderId;
    document.getElementById('modalCustomerName').textContent = orderData.customerName;
    document.getElementById('modalOrderDate').textContent = orderData.orderDate;
    document.getElementById('modalPaymentMethod').textContent = orderData.paymentMethod;
    document.getElementById('modalTotalAmount').textContent = orderData.totalAmount;
    document.getElementById('modalOrderStatus').value = orderData.status;

    // Update order items table
    const itemsContainer = document.getElementById('modalOrderItems');
    itemsContainer.innerHTML = orderData.items.map(item => `
        <tr>
            <td>${item.name}</td>
            <td>${item.quantity}</td>
            <td>${item.price}</td>
            <td>${item.total}</td>
        </tr>
    `).join('');

    // Show modal
    $('#orderDetailsModal').modal('show');
}

function updateOrderStatus(orderId, newStatus) {
    // Update mock data
    if (mockOrderDetails[orderId]) {
        mockOrderDetails[orderId].status = newStatus;
    }

    // Update table row status badge
    const orderRow = document.querySelector(`tr td:first-child[textContent="${orderId}"]`).closest('tr');
    const statusBadge = orderRow.querySelector('.badge');
    statusBadge.className = `badge ${statusBadgeClasses[newStatus]}`;
    statusBadge.textContent = statusVietnamese[newStatus];

    // Show success message
    alert('Cập nhật trạng thái đơn hàng thành công!');
    $('#orderDetailsModal').modal('hide');
}
