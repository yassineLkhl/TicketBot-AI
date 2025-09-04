-- CreateTable
CREATE TABLE "public"."CategoryOnTicket" (
    "ticket_id" INTEGER NOT NULL,
    "category_id" INTEGER NOT NULL,

    CONSTRAINT "CategoryOnTicket_pkey" PRIMARY KEY ("ticket_id","category_id")
);

-- AddForeignKey
ALTER TABLE "public"."CategoryOnTicket" ADD CONSTRAINT "CategoryOnTicket_ticket_id_fkey" FOREIGN KEY ("ticket_id") REFERENCES "public"."Ticket"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "public"."CategoryOnTicket" ADD CONSTRAINT "CategoryOnTicket_category_id_fkey" FOREIGN KEY ("category_id") REFERENCES "public"."Category"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
