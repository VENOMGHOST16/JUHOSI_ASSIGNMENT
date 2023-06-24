<!DOCTYPE html>
<html lang="en">
<head>
    <title>Package Details</title>
    <link rel="stylesheet" href="cust.css">
    <script src="script.js">
    
    
    </script>
</head>
<body>
	
    <h1>Package Details</h1>
    <div class="container">
        <form action="submitform.jsp" method="POST">
            <label for="date">Date:</label>
            <input type="date" id="date" name="date" required>
            
            <label for="company">Company Name:</label>
            <input type="text" id="company" name="company" required>
            
            <label for="Owner">Owner</label>
            <input type="text" id="owner" name="owner" required>
            
            <label for="Item">Item</label>
            <input type="text" id="item" name="item" required>
            
            <label for="Quantity">Quantity</label>
            <input type="number" id="quantity" name="quantity" min="0" required>
            
            <label for="weight">Weight:</label>
            <input type="number" id="weight" name="weight" step=".001" required>
            
            <label for="Requestshipment">Request for Shipment</label>
            <input type="text" id="Requestshipment" name="Requestshipment" required>
            
            <label for="Trackid">Tracking ID</label>
            <input type="text" id="Trackid" name="Trackid" required>
            
            <label for="dimensions">Dimensions (LxWxH):</label>
			<input type="text" id="dimensions" name="dimensions" required>
			
			<label for="boxcnt">Box Count</label>
            <input type="number" id="boxcnt" name="boxcnt" min="0" required>
            
            <label for="Specific">Specifications</label>
			<input type="text" id="Specific" name="Specific" required>
			
			<label for="Checklist">CheckList Quantity</label>
			<input type="text" id="Checklist" name="Checklist" required>

			<button onclick="parseDimensions()">Submit</button>
        </form>
        <div id="successMessage" style="display: none;">
    Form submitted successfully!
  </div>
    </div>
</body>
</html>
