.class public final synthetic Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/util/FunctionalUtils$ThrowingConsumer;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/companion/AssociationInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/AssociationInfo;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;->f$1:Landroid/companion/AssociationInfo;

    return-void
.end method


# virtual methods
.method public final acceptOrThrow(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/companion/association/AssociationDiskStore$$ExternalSyntheticLambda2;->f$1:Landroid/companion/AssociationInfo;

    check-cast p1, Ljava/io/FileOutputStream;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write([B)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p1, v1}, Ljava/io/FileOutputStream;->write(I)V

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V

    return-void
.end method
