.class public final synthetic Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServiceManager;

.field public final synthetic f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

.field public final synthetic f$2:Lcom/android/server/SystemService$TargetUser;

.field public final synthetic f$3:Lcom/android/server/SystemService$UserCompletedEventType;

.field public final synthetic f$4:Ljava/lang/String;

.field public final synthetic f$5:Lcom/android/server/SystemService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServiceManager;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;Ljava/lang/String;Lcom/android/server/SystemService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServiceManager;

    iput-object p2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iput-object p3, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/SystemService$TargetUser;

    iput-object p4, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/SystemService$UserCompletedEventType;

    iput-object p5, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/SystemService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$1:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v2, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$2:Lcom/android/server/SystemService$TargetUser;

    iget-object v3, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$3:Lcom/android/server/SystemService$UserCompletedEventType;

    iget-object v4, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$4:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/SystemServiceManager$$ExternalSyntheticLambda1;->f$5:Lcom/android/server/SystemService;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v0, "onCompletedEventUser-"

    new-instance v5, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v5, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-virtual {v2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "ssm.onCompletedEventUser-"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {p0, v2, v3}, Lcom/android/server/SystemService;->onUserCompletedEvent(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$UserCompletedEventType;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v8, v9, p0, v0, v1}, Lcom/android/server/SystemServiceManager;->warnIfTooLong(JLcom/android/server/SystemService;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_1
    const-string v0, "CompletedEvent"

    invoke-static {v0, v2, v4, p0}, Lcom/android/server/SystemServiceManager;->logFailure(Ljava/lang/String;Lcom/android/server/SystemService$TargetUser;Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v5}, Landroid/util/TimingsTraceLog;->traceEnd()V

    throw p0
.end method
