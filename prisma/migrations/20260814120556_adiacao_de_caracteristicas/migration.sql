/*
  Warnings:

  - Added the required column `email` to the `Filial` table without a default value. This is not possible if the table is not empty.
  - Added the required column `endereco` to the `Filial` table without a default value. This is not possible if the table is not empty.
  - Added the required column `telefone` to the `Filial` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Filial" ADD COLUMN     "email" TEXT NOT NULL,
ADD COLUMN     "endereco" TEXT NOT NULL,
ADD COLUMN     "telefone" TEXT NOT NULL;

-- AlterTable
ALTER TABLE "matriz" ADD COLUMN     "endereco" TEXT;
