.class public Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;
.super Ljava/lang/Exception;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field private final alertMessageToSend:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/security/cryptauth/lib/securegcm/ukey2/AlertException;->alertMessageToSend:[B

    return-void
.end method
