.class public Lcom/android/server/backup/transport/TransportNotAvailableException;
.super Landroid/util/AndroidException;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "Transport not available"

    invoke-direct {p0, v0}, Landroid/util/AndroidException;-><init>(Ljava/lang/String;)V

    return-void
.end method
