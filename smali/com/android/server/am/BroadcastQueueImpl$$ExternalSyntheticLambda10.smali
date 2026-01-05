.class public final synthetic Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueueImpl;

.field public final synthetic f$1:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueueImpl;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iput-object p2, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;->f$1:Ljava/io/PrintWriter;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/server/am/BroadcastQueueImpl;

    iget-object p0, p0, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda10;->f$1:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/server/am/BroadcastQueueImpl$$ExternalSyntheticLambda13;-><init>(I)V

    const-string/jumbo v2, "idle"

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/am/BroadcastQueueImpl;->testAllProcessQueues(Ljava/util/function/Predicate;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p0

    return p0
.end method
