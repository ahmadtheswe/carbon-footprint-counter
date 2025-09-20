-- CreateEnum
CREATE TYPE "public"."CategoryEnum" AS ENUM ('PRODUCT', 'TRAVEL', 'FOOD', 'ENERGY', 'TRANSACTION');

-- CreateTable
CREATE TABLE "public"."emission_factors" (
    "id" UUID NOT NULL,
    "category" "public"."CategoryEnum" NOT NULL,
    "subcategory" TEXT NOT NULL,
    "activity" TEXT NOT NULL,
    "unit" TEXT NOT NULL,
    "value" DOUBLE PRECISION NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updatedAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "emission_factors_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "emission_factors_category_subcategory_activity_unit_key" ON "public"."emission_factors"("category", "subcategory", "activity", "unit");
