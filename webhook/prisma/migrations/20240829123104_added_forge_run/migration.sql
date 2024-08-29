-- CreateTable
CREATE TABLE "ForgeRun" (
    "id" TEXT NOT NULL,
    "ForgeID" TEXT NOT NULL,

    CONSTRAINT "ForgeRun_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "ForgeRun" ADD CONSTRAINT "ForgeRun_ForgeID_fkey" FOREIGN KEY ("ForgeID") REFERENCES "Forge"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
