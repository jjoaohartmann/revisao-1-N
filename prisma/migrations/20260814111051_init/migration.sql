-- CreateTable
CREATE TABLE "matriz" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "cnpj" TEXT NOT NULL,
    "email" TEXT NOT NULL,
    "telefone" INTEGER NOT NULL,

    CONSTRAINT "matriz_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Filial" (
    "id" TEXT NOT NULL,
    "nome" TEXT NOT NULL,
    "cnpj" TEXT NOT NULL,
    "matrizId" TEXT NOT NULL,

    CONSTRAINT "Filial_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "matriz_cnpj_key" ON "matriz"("cnpj");

-- CreateIndex
CREATE UNIQUE INDEX "Filial_cnpj_key" ON "Filial"("cnpj");

-- AddForeignKey
ALTER TABLE "Filial" ADD CONSTRAINT "Filial_matrizId_fkey" FOREIGN KEY ("matrizId") REFERENCES "matriz"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
