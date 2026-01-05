.class public abstract Lcom/android/server/knox/dar/sdp/SDPLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-direct {v0}, Ljava/lang/Thread;-><init>()V

    sput-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    return-void
.end method

.method public static enqMessage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->cLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    sput v1, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->mState:I

    new-instance v2, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-direct {v2}, Ljava/lang/Thread;-><init>()V

    sput-object v2, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-virtual {v2, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lcom/android/server/knox/dar/sdp/SDPLogger;->mLogger:Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;

    if-eqz v1, :cond_1

    invoke-static {v1, p0}, Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;->-$$Nest$madd(Lcom/android/server/knox/dar/sdp/SDPLogger$Logger;Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
