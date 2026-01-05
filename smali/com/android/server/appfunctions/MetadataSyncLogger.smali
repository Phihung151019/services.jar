.class public final Lcom/android/server/appfunctions/MetadataSyncLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLogs:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncLogger;->mLogs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appfunctions/MetadataSyncLogger;->mLogs:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncLogger;->mLogs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v2, 0x28

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/appfunctions/MetadataSyncLogger;->mLogs:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/appfunctions/MetadataSyncLogger;->mLogs:Ljava/util/List;

    new-instance v1, Lcom/android/server/appfunctions/MetadataSyncLogger$EventLogEntry;

    invoke-direct {v1, p1}, Lcom/android/server/appfunctions/MetadataSyncLogger$EventLogEntry;-><init>(Ljava/lang/String;)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
