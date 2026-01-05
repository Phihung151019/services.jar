.class Lcom/android/server/knox/dar/DarDatabaseCache$1;
.super Ljava/util/LinkedHashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x5dbe90b824986878L


# instance fields
.field final synthetic this$0:Lcom/android/server/knox/dar/DarDatabaseCache;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/dar/DarDatabaseCache;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/knox/dar/DarDatabaseCache$1;->this$0:Lcom/android/server/knox/dar/DarDatabaseCache;

    const/16 p1, 0xa

    const/high16 v0, 0x3f400000    # 0.75f

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
