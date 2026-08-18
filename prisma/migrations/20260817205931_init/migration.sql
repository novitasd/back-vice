/*
  Warnings:

  - Added the required column `quality` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "ProductQuality" AS ENUM ('G5', 'IMPORTADA', 'PREMIUM');

-- AlterTable
ALTER TABLE "Product" ADD COLUMN     "quality" "ProductQuality" NOT NULL;

-- CreateIndex
CREATE INDEX "Product_quality_idx" ON "Product"("quality");
