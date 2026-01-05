.class public final Lcom/android/server/am/ActivityManagerService$19;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic val$pss:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/am/ActivityManagerService$19;->val$pss:Z

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/android/server/am/ActivityManagerService$MemItem;

    check-cast p2, Lcom/android/server/am/ActivityManagerService$MemItem;

    iget-boolean p0, p0, Lcom/android/server/am/ActivityManagerService$19;->val$pss:Z

    if-eqz p0, :cond_0

    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_0

    :cond_0
    iget-wide v0, p1, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_0
    if-eqz p0, :cond_1

    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->pss:J

    goto :goto_1

    :cond_1
    iget-wide p0, p2, Lcom/android/server/am/ActivityManagerService$MemItem;->mRss:J

    :goto_1
    cmp-long p0, v0, p0

    if-gez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-lez p0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
