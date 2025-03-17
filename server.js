const express = require('express');
const cors = require('cors');

const app = express();
const PORT = process.env.PORT || 3003;

// Configure CORS to restrict origins
const corsOptions = {
  origin: [
    /localhost/,
    /127.0.0.1/,
    /google.com$/,
    /vccs.edu$/
  ]
};

app.use(cors(corsOptions));

// Route to generate 17 random numbers
app.get('/', (req, res) => {
  const randomNumbers = Array.from({ length: 17 }, () => Math.floor(Math.random() * 100));
  res.json({ numbers: randomNumbers });
});

app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});