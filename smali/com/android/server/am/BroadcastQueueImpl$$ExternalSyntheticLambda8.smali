.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;

.field public final synthetic f$1:J

.field public final synthetic f$2:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;JLjava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iput-wide p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$1:J

    iput-object p4, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$2:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-wide v1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$1:J

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda8;->f$2:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;

    invoke-direct {v3, v1, v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda23;-><init>(J)V

    const-string/jumbo v1, "barrier"

    invoke-virtual {v0, v3, v1, p0}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method
