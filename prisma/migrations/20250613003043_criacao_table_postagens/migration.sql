-- CreateTable
CREATE TABLE "Postagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "mensagem_post" TEXT NOT NULL,
    "criacao_post" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
