import React, { useEffect, useState } from 'react';


function App() {
const [message, setMessage] = useState("Loading...");


useEffect(() => {
fetch("/api/hello")
.then((res) => res.json())
.then((data) => setMessage(data.message));
}, []);


return (
<div style={{ textAlign: "center", marginTop: "40px" }}>
<h1>React Frontend</h1>
<p>Backend says: {message}</p>
</div>
);
}


export default App;
