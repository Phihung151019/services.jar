.class public abstract Lcom/android/server/notification/RankingReconsideration;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mDelay:J

.field public final mKey:Ljava/lang/String;

.field public mState:I


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/notification/RankingReconsideration;->mDelay:J

    iput-object p3, p0, Lcom/android/server/notification/RankingReconsideration;->mKey:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    return-void
.end method


# virtual methods
.method public abstract applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public final run()V
    .locals 1

    iget v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    invoke-virtual {p0}, Lcom/android/server/notification/RankingReconsideration;->work()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/notification/RankingReconsideration;->mState:I

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method public abstract work()V
.end method
