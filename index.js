// Importing file system
const fs = require("fs");

// Creating a new file
fs.writeFileSync("read.txt","Welcome to Mediology Software");

// it will erase previous data and insert updated data
fs.writeFileSync("read.txt","Thank you");

// to add new data in existing file
fs.appendFileSync("read.txt","\nYour are the best.")

// to read a file
const fileData = fs.readFileSync("read.txt");
console.log("File message: ",fileData);     // this will give a buffer data
// To read in string data from buffer data
const bufToStr = fileData.toString();
console.log("Real data: ", bufToStr);

// To rename a file
fs.renameSync("read.txt","readWrite.txt");