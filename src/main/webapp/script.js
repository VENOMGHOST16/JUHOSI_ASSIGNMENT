function checkForm(event) {
            event.preventDefault(); // Prevent form submission

            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username.trim() === "" || password.trim() === "") {
                alert("Please enter both username and password.");
            } else {
                // Form is valid, proceed with submission
                document.forms[0].submit();
            }
        }
        
function parseDimensions() {
    var input = document.getElementById("dimensions").value;
    var dimensions = input.split("x");
    
    if (dimensions.length === 3) {
      var length = parseFloat(dimensions[0]);
      var width = parseFloat(dimensions[1]);
      var height = parseFloat(dimensions[2]);
      
      if (!isNaN(length) && !isNaN(width) && !isNaN(height)) {
        
      } else {
        alert("Invalid dimensions. Please enter valid numeric values.");
      }
    } else {
      alert("Invalid dimensions format. Please use the format LxWxH.");
    }
  }
  
 function submitForm() {
  var form = document.getElementById('myForm');
  var formData = new FormData(form);

  // Send form data to the server
  var xhr = new XMLHttpRequest();
  xhr.open('POST', form.action, true);
  xhr.onload = function() {
    if (xhr.status === 200) {
      // Form submission successful
      showSuccessMessage();
      alert('Form submitted successfully!');
    } else {
      // Form submission failed
      console.error('Form submission failed.');
    }
  };
  xhr.onerror = function() {
    console.error('Request failed.');
  };
  xhr.send(formData);
}

  
  
  
