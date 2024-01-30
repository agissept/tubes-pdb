import 'dotenv/config'
import express from 'express'
import pages from "./routes/pages.js";
import api from "./routes/api-users.js";

const app = express()
const port = 3000

app.use(express.static('public'));
app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.use('/', pages)
app.use('/api', api)


app.listen(port, () => {
    console.log(`Example app listening on port ${port}`)
})
