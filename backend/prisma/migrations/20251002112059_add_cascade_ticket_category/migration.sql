-- DropForeignKey
ALTER TABLE "public"."CategoryOnTicket" DROP CONSTRAINT "CategoryOnTicket_category_id_fkey";

-- DropForeignKey
ALTER TABLE "public"."CategoryOnTicket" DROP CONSTRAINT "CategoryOnTicket_ticket_id_fkey";

-- AddForeignKey
ALTER TABLE "public"."CategoryOnTicket" ADD CONSTRAINT "CategoryOnTicket_ticket_id_fkey" FOREIGN KEY ("ticket_id") REFERENCES "public"."Ticket"("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."CategoryOnTicket" ADD CONSTRAINT "CategoryOnTicket_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."Category"("id") ON DELETE CASCADE ON UPDATE CASCADE;
