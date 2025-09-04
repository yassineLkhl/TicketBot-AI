/*
  Warnings:

  - You are about to alter the column `title` on the `Ticket` table. The data in that column could be lost. The data in that column will be cast from `Text` to `VarChar(255)`.

*/
-- AlterTable
ALTER TABLE "public"."Category" ADD COLUMN     "updated_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."Client" ADD COLUMN     "updated_at" TIMESTAMP(3);

-- AlterTable
ALTER TABLE "public"."Ticket" ALTER COLUMN "title" SET DATA TYPE VARCHAR(255);

-- AlterTable
ALTER TABLE "public"."User" ADD COLUMN     "updated_at" TIMESTAMP(3);

-- CreateIndex
CREATE INDEX "Category_client_id_idx" ON "public"."Category"("client_id");

-- CreateIndex
CREATE INDEX "Ticket_user_id_idx" ON "public"."Ticket"("user_id");

-- CreateIndex
CREATE INDEX "User_client_id_idx" ON "public"."User"("client_id");
