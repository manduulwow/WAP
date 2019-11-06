const students = [
    { "studentId": "000-98-0001", "firstName": "James" },
    { "studentId": "000-98-0002", "firstName": "Anna" },
    { "studentId": "000-98-0003", "firstName": "Jeffrey" }
];

function drawList() {
    for (let i = 0; i < students.length; i++) {
        const li = document.createElement("LI");
        const textnode = document.createTextNode(students[i].studentId + " - " + students[i].firstName);
        li.appendChild(textnode);
        li.className = "list-group-item";
        document.getElementById("myList").appendChild(li);
    }
}

function addStudent() {
    const li = document.createElement("LI");
    const textnode = document.createTextNode(document.forms["myForm"]["studentID"].value + " - " + document.forms["myForm"]["fname"].value);
    li.appendChild(textnode);
    li.className = "list-group-item";
    document.getElementById("myList").appendChild(li);
}

