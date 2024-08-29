-- CreateTable
CREATE TABLE "ForgeRunOffset" (
    "id" TEXT NOT NULL,
    "ForgeRunId" TEXT NOT NULL,

    CONSTRAINT "ForgeRunOffset_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ForgeRunOffset" ADD CONSTRAINT "ForgeRunOffset_ForgeRunId_fkey" FOREIGN KEY ("ForgeRunId") REFERENCES "ForgeRun"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
