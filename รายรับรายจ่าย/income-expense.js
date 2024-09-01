document.getElementById('transaction-form').addEventListener('submit', function(event) {
    event.preventDefault();

    // Get input values
    const date = document.getElementById('date').value;
    const description = document.getElementById('description').value;
    const amount = parseFloat(document.getElementById('amount').value);
    const type = document.getElementById('type').value;

    // Create a new row in the table
    const table = document.getElementById('transaction-table').querySelector('tbody');
    const row = table.insertRow();

    const cellDate = row.insertCell(0);
    const cellDescription = row.insertCell(1);
    const cellIncome = row.insertCell(2);
    const cellExpense = row.insertCell(3);
    const cellTotal = row.insertCell(4);

    cellDate.textContent = new Date(date).toLocaleDateString('en-GB');
    cellDescription.textContent = description;
    if (type === 'income') {
        cellIncome.textContent = amount.toFixed(2);
        cellExpense.textContent = '-';
        cellIncome.style.color = 'palevioletred';
    } else {
        cellIncome.textContent = '-';
        cellExpense.textContent = amount.toFixed(2);
        cellExpense.style.color = 'rgb(196, 39, 39)';
    }

    // Calculate total based on previous row's total or initialize
    const previousRow = row.previousElementSibling;
    const previousTotal = previousRow ? parseFloat(previousRow.cells[4].textContent) : 0;
    const currentTotal = type === 'income' ? previousTotal + amount : previousTotal - amount;
    cellTotal.textContent = currentTotal.toFixed(2);
    cellTotal.style.color = 'rgb(25, 182, 85)';

    // Clear form fields
    document.getElementById('transaction-form').reset();
});
