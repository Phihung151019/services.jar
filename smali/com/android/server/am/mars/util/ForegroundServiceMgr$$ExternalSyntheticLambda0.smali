.class public final synthetic Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->getAccesesTimeHelper:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    const-string v1, "ForegroundServiceMgr"

    :try_start_0
    iget-object v2, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "op ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "] access time"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    invoke-virtual {p0, v4, v3}, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->getAccessTimeOfOp(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v0, "exception"

    invoke-static {v1, v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
