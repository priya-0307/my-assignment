const express = require("express");
const app = express();
const PORT = process.env.PORT || 3000;


app.get("/api/hello", (req, res) => {
res.json({ message: "Hello from Node backend!" });
});


app.get("/health", (req, res) => res.send("OK"));
app.get("/ready", (req, res) => res.send("READY"));


app.listen(PORT, () => console.log(`Backend running on port ${PORT}`));
