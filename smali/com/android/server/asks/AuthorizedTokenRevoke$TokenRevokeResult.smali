.class public final Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final tokenList:Ljava/util/List;

.field public final tokenMap:Ljava/util/Map;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;->tokenList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/asks/AuthorizedTokenRevoke$TokenRevokeResult;->tokenMap:Ljava/util/Map;

    return-void
.end method
