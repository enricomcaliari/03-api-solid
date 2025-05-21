/*
  Warnings:

  - You are about to drop the column `latitute` on the `gyms` table. All the data in the column will be lost.
  - Added the required column `latitude` to the `gyms` table without a default value. This is not possible if the table is not empty.

*/
-- CreateEnum
CREATE TYPE "Role" AS ENUM ('ADMIN', 'MEMBER');

-- AlterTable
ALTER TABLE "gyms" DROP COLUMN "latitute",
ADD COLUMN     "latitude" DECIMAL(65,30) NOT NULL;

-- AlterTable
ALTER TABLE "users" ADD COLUMN     "role" "Role" NOT NULL DEFAULT 'MEMBER';
