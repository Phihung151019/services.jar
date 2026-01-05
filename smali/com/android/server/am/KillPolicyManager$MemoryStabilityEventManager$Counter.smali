.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final countOfEvents:[J


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    return-void
.end method


# virtual methods
.method public final diffFrom(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;)V
    .locals 19

    move-object/from16 v0, p1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    if-ltz v2, :cond_b

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aget-wide v5, v4, v2

    const-wide/16 v7, 0x0

    if-nez v0, :cond_0

    move-wide v9, v7

    goto :goto_1

    :cond_0
    iget-object v9, v0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;->countOfEvents:[J

    aget-wide v9, v9, v2

    :goto_1
    cmp-long v11, v5, v7

    const/4 v12, 0x0

    if-ltz v11, :cond_2

    cmp-long v11, v9, v7

    if-gez v11, :cond_1

    goto :goto_2

    :cond_1
    move v11, v12

    goto :goto_3

    :cond_2
    :goto_2
    move v11, v1

    :goto_3
    const-wide/16 v13, 0x64

    cmp-long v15, v5, v13

    if-lez v15, :cond_3

    move v15, v1

    goto :goto_4

    :cond_3
    move v15, v12

    :goto_4
    cmp-long v16, v9, v13

    if-lez v16, :cond_4

    move/from16 v16, v1

    goto :goto_5

    :cond_4
    move/from16 v16, v12

    :goto_5
    cmp-long v17, v5, v9

    if-gez v17, :cond_5

    move v12, v1

    :cond_5
    if-eqz v11, :cond_6

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    goto :goto_7

    :cond_6
    if-eqz v15, :cond_7

    const-wide/16 v7, 0xc8

    goto :goto_7

    :cond_7
    const-wide/16 v17, 0x12c

    if-eqz v16, :cond_8

    :goto_6
    move-wide/from16 v7, v17

    goto :goto_7

    :cond_8
    if-eqz v12, :cond_9

    goto :goto_7

    :cond_9
    sub-long v7, v5, v9

    cmp-long v5, v7, v13

    if-lez v5, :cond_a

    goto :goto_6

    :cond_a
    :goto_7
    aput-wide v7, v4, v2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_b
    return-void
.end method
