-- CreateTable
CREATE TABLE "Usuarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "nome_usua" TEXT NOT NULL,
    "email_usua" TEXT NOT NULL,
    "senha_usua" TEXT NOT NULL,
    "criacao_usua" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateIndex
CREATE UNIQUE INDEX "Usuarios_email_usua_key" ON "Usuarios"("email_usua");
