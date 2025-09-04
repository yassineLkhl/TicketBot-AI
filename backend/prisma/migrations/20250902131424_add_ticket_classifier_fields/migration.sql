-- CreateEnum
CREATE TYPE "public"."TicketPriority" AS ENUM ('LOW', 'MEDIUM', 'HIGH', 'CRITICAL');

-- CreateEnum
CREATE TYPE "public"."TicketSource" AS ENUM ('EMAIL', 'CHATBOT', 'WEB', 'API');

-- AlterTable
ALTER TABLE "public"."CategoryOnTicket" ADD COLUMN     "assigned_by" TEXT,
ADD COLUMN     "confidence" DOUBLE PRECISION;

-- AlterTable
ALTER TABLE "public"."Ticket" ADD COLUMN     "priority" "public"."TicketPriority" NOT NULL DEFAULT 'MEDIUM',
ADD COLUMN     "source" "public"."TicketSource" NOT NULL DEFAULT 'WEB';
