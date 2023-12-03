-- CreateTable
CREATE TABLE "Propfile" (
    "id" SERIAL NOT NULL,
    "bio" TEXT,
    "profileImageUrl" TEXT,
    "userId" INTEGER NOT NULL,

    CONSTRAINT "Propfile_pkey" PRIMARY KEY ("id")
);

-- CreateIndex
CREATE UNIQUE INDEX "Propfile_userId_key" ON "Propfile"("userId");

-- AddForeignKey
ALTER TABLE "Propfile" ADD CONSTRAINT "Propfile_userId_fkey" FOREIGN KEY ("userId") REFERENCES "User"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
