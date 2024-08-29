-- CreateTable
CREATE TABLE "User" (
    "id" SERIAL NOT NULL,
    "name" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "password" TEXT NOT NULL,

    CONSTRAINT "User_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Forge" (
    "id" TEXT NOT NULL,
    "triggerId" TEXT NOT NULL,

    CONSTRAINT "Forge_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Trigger" (
    "id" TEXT NOT NULL,
    "forgeId" TEXT NOT NULL,
    "TriggerId" TEXT NOT NULL,
    "typeId" TEXT NOT NULL,

    CONSTRAINT "Trigger_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Actions" (
    "id" TEXT NOT NULL,
    "ForgeID" TEXT NOT NULL,
    "actionId" TEXT NOT NULL,

    CONSTRAINT "Actions_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AvailableAction" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "AvailableAction_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "AvailableTrigger" (
    "id" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "image" TEXT NOT NULL,

    CONSTRAINT "AvailableTrigger_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Trigger_forgeId_key" ON "Trigger"("forgeId");

-- AddForeignKey
ALTER TABLE "Trigger" ADD CONSTRAINT "Trigger_typeId_fkey" FOREIGN KEY ("typeId") REFERENCES "AvailableTrigger"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Trigger" ADD CONSTRAINT "Trigger_forgeId_fkey" FOREIGN KEY ("forgeId") REFERENCES "Forge"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Actions" ADD CONSTRAINT "Actions_ForgeID_fkey" FOREIGN KEY ("ForgeID") REFERENCES "Forge"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Actions" ADD CONSTRAINT "Actions_actionId_fkey" FOREIGN KEY ("actionId") REFERENCES "AvailableAction"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
