//currently building with Harikirat ref

import express from "express"

const app = express();

//webhook.domain/hooks/catch/userid/triggerid format

app.post("/hooks/catch/:userId/:forgeID", (req, res)=> {
    const userId = req.params.userId;
    const forgeID = req.params.forgeID;
    
    //Store new trigger in DB

    //Push it on Kafka/Redis

    
})