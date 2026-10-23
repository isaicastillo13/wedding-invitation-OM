ALTER TABLE "public"."invitaciones"
ADD COLUMN IF NOT EXISTS "cantidad_confirmada" INTEGER NOT NULL DEFAULT 0;
