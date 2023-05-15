function validateForm()
{
    try {
        // Get the form elements
        const username = document.getElementById("username").value;
        const pin = document.getElementById("pin").value;
        const state = document.getElementById("state").value;
        const validatePinCheckbox = document.getElementById("validate-pin-checkbox");
        const testMeCheckbox = document.getElementById("test-me-checkbox");
        const butterRadio = document.getElementById("butter-radio");
        const cheeseRadio = document.getElementById("cheese-radio");

        // Validate the username
        if (username.length < 6 || username.length > 8) {
            throw new Error("Username should be between 6 and 8 characters");
        }

        // Validate the pin
        if (!/^[a-zA-Z0-9]+$/.test(pin)) {
            throw new Error("Pin should be alpha-numeric");
        }

        // Validate the state
        if (state === "") {
            throw new Error("State should be selected");
        }

        // Validate the validate pin checkbox
        if (validatePinCheckbox.checked && pin === "") {
            throw new Error("Pin is mandatory");
        }

        // Validate the test me checkbox
        const testMeMessage = testMeCheckbox.checked ? "checked" : "unchecked";

        // Validate the butter and cheese radios
        if (butterRadio.checked && cheeseRadio.checked) {
            throw new Error("At any point in time only one of the options should get selected");
        }

        // Display the success message
        alert("Form validation successful");

    } catch (error) {
        // Display the error message
        alert(`Error: ${error.message}`);
    }
}