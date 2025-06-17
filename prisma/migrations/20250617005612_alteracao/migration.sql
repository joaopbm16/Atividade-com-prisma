-- CreateTable
CREATE TABLE "Curtidas" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "criacao_curt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Curtidas_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Curtidas_postagem_id_fkey" FOREIGN KEY ("postagem_id") REFERENCES "Postagens" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Comentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "postagem_id" INTEGER NOT NULL,
    "mensagem_come" TEXT NOT NULL,
    "criacao_come" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Comentarios_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Comentarios_postagem_id_fkey" FOREIGN KEY ("postagem_id") REFERENCES "Postagens" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Curtidas_Comentarios" (
    "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "usuario_id" INTEGER NOT NULL,
    "comentario_id" INTEGER NOT NULL,
    "criacao_cuco" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT "Curtidas_Comentarios_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Usuarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "Curtidas_Comentarios_usuario_id_fkey" FOREIGN KEY ("usuario_id") REFERENCES "Comentarios" ("id") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateIndex
CREATE UNIQUE INDEX "Curtidas_usuario_id_postagem_id_key" ON "Curtidas"("usuario_id", "postagem_id");

-- CreateIndex
CREATE UNIQUE INDEX "Comentarios_usuario_id_postagem_id_key" ON "Comentarios"("usuario_id", "postagem_id");

-- CreateIndex
CREATE UNIQUE INDEX "Curtidas_Comentarios_usuario_id_comentario_id_key" ON "Curtidas_Comentarios"("usuario_id", "comentario_id");
