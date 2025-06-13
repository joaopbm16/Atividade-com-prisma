-- RedefineTables
PRAGMA defer_foreign_keys=ON;
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_Postagens" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "mensagem_post" TEXT NOT NULL,
    "criacao_post" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Postagens_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);
INSERT INTO "new_Postagens" ("criacao_post", "id", "mensagem_post", "usuario_id") SELECT "criacao_post", "id", "mensagem_post", "usuario_id" FROM "Postagens";
DROP TABLE "Postagens";
ALTER TABLE "new_Postagens" RENAME TO "Postagens";
PRAGMA foreign_keys=ON;
PRAGMA defer_foreign_keys=OFF;
