<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="selectPlan.css">
<title>Subscription Plans</title>
</head>
<body>
  <h1 >Choose the Right Plan for You</h1>
  <div class="container">
  <table class="customTable">
    <thead>
      <tr style="height: 45%;">
        <th style="background-color: white;">
        <label class="toggle-switch">
          <input type="checkbox">
          <span class="toggle-slider"></span>
        </label>
        </th>

        <th onclick="togglePlan(0)">Mobile</th>
          <th onclick="togglePlan(1)">Basic</th>
          <th onclick="togglePlan(2)">Standard</th>
          <th onclick="togglePlan(3)">Premium</th>
        </tr>

      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Monthly Price</td>
        <td>Rs. 1000</td>
        <td>Rs. 2000</td>
        <td>Rs. 5000</td>
        <td>Rs. 7000</td>
      </tr>
      <tr>
        <td>Video Quality</td>
        <td>Good</td>
        <td>Good</td>
        <td>Better</td>
        <td>Best</td>
      </tr>
      <tr>
        <td>Resolution</td>
        <td>480p</td>
        <td>480p</td>
        <td>1080p</td>
        <td>4K+HDR</td>
      </tr>
      <tr>
        <td>Devices</td>
        <td>Phone</td>
        <td>Phone</td>
        <td>Phone</td>
        <td>Phone</td>
      </tr>
      <tr>
        <td></td>
        <td>Tablet</td>
        <td>Tablet</td>
        <td>Tablet</td>
        <td>Tablet</td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td>Computer </td>
        <td>Computer</td>
        <td>Computer</td>
      </tr>
      <tr>
        <td></td>
        <td></td>
        <td>TV</td>
        <td>TV</td>
        <td>TV</td>
      </tr>
    </tbody>
  </table>
</div>
<div class="button-container">
  <button class="action-button">Next</button>
</div>
</body>
</html>
<script>
  document.addEventListener("DOMContentLoaded", function () {
    const checkboxes = document.querySelectorAll('.toggle-switch input[type="checkbox"]');
    const plans = document.querySelectorAll('.customTable tbody tr:not(:first-child) th');
    const priceCells = document.querySelectorAll('.customTable tbody tr:nth-child(1) td:not(:first-child)');

    plans.forEach((plan, index) => {
      plan.addEventListener('click', function () {
        checkboxes[index].checked = !checkboxes[index].checked;

        if (checkboxes[index].checked) {
          plan.parentElement.classList.add('highlight');
        } else {
          plan.parentElement.classList.remove('highlight');
        }
      });
    });

    checkboxes.forEach((checkbox, index) => {
      checkbox.addEventListener('click', function () {
        if (this.checked) {
          plans[index].parentElement.classList.add('highlight');
        } else {
          plans[index].parentElement.classList.remove('highlight');
        }
      });
    });

    document.querySelector('.action-button').addEventListener('click', function () {
      const selectedPrices = [];

      checkboxes.forEach((checkbox, index) => {
        if (checkbox.checked) {
          selectedPrices.push(priceCells[index].textContent);
        }
      });

      if (selectedPrices.length > 0) {
        // Proceed with the next procedure using the selected prices
        console.log('Selected Prices:', selectedPrices);
      } else {
        console.log('No plans selected');
      }
    });
  });
</script>