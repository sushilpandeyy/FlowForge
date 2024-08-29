/*
  Warnings:

  - Added the required column `metadata` to the `ForgeRun` table without a default value. This is not possible if the table is not empty.
  - Added the required column `metadata` to the `ForgeRunOffset` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "ForgeRun" ADD COLUMN     "metadata" JSONB NOT NULL;

-- AlterTable
ALTER TABLE "ForgeRunOffset" ADD COLUMN     "metadata" JSONB NOT NULL;
