//currently building with Harikirat ref

import express from "express"
import {PrismaClient} from "@prisma/client"

const app = express();
app.use(express.json());
const client = new PrismaClient();

//webhook.domain/hooks/catch/userid/triggerid format

app.post("/hooks/catch/:userId/:forgeID", async (req, res)=> {
    const userId = req.params.userId;
    const forgeID = req.params.forgeID;
    const body = req.body;

    await client.$transaction(async tx=>{
        const run = await tx.forgeRun.create({
            data:{
                ForgeID: forgeID,
                metadata: body
            }
        })
        console.log("you are right")

        await tx.forgeRunOffset.create({
            data:{
                ForgeRunId: run.id,
                metadata: body
            }
        })
        res.json({
            message: "Webhook Recieved"
        })
    })

    
    //Store new trigger in DB
    //Push it on Kafka/Redis

})

app.listen(8000,()=>{
    console.log("Running")
});