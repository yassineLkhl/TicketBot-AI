/*
  Warnings:

  - Made the column `client_id` on table `Category` required. This step will fail if there are existing NULL values in that column.
  - Made the column `client_id` on table `User` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE "public"."Category" DROP CONSTRAINT "Category_client_id_fkey";

-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_client_id_fkey";

-- AlterTable
ALTER TABLE "public"."Category" ALTER COLUMN "client_id" SET NOT NULL;

-- AlterTable
ALTER TABLE "public"."User" ALTER COLUMN "client_id" SET NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."Category" ADD CONSTRAINT "Category_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."Client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."Client"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
