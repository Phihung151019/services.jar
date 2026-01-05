.class Lcom/android/server/am/compaction/CompactionStatsManager$1;
.super Ljava/util/LinkedHashMap;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedHashMap<",
        "Ljava/lang/Integer;",
        "Lcom/android/server/am/compaction/SingleCompactionStats;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/compaction/CompactionStatsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/compaction/CompactionStatsManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/compaction/CompactionStatsManager$1;->this$0:Lcom/android/server/am/compaction/CompactionStatsManager;

    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    return-void
.end method


# virtual methods
.method public final removeEldestEntry(Ljava/util/Map$Entry;)Z
    .locals 0

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    const/16 p1, 0x100

    if-le p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
