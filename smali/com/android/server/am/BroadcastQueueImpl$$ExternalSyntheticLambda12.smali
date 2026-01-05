.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;->f$0:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda12;->f$0:J

    check-cast p1, Lcom/android/server/am/BroadcastProcessQueue;

    iget-wide v2, p1, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    iput-wide v0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mForcedDelayedDurationMs:J

    const/4 p0, 0x1

    iput-boolean p0, p1, Lcom/android/server/am/BroadcastProcessQueue;->mRunnableAtInvalidated:Z

    :cond_0
    return-void
.end method
