-- DropForeignKey
ALTER TABLE "public"."User" DROP CONSTRAINT "User_client_id_fkey";

-- AlterTable
ALTER TABLE "public"."User" ALTER COLUMN "client_id" DROP NOT NULL;

-- AddForeignKey
ALTER TABLE "public"."User" ADD CONSTRAINT "User_client_id_fkey" FOREIGN KEY ("client_id") REFERENCES "public"."Client"("id") ON DELETE SET NULL ON UPDATE CASCADE;
