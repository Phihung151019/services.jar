.class public abstract Lcom/android/server/am/pds/PDSTrigger$PDSTriggerHolder;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final INSTANCE:Lcom/android/server/am/pds/PDSTrigger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/server/am/pds/PDSTrigger;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mReceiverRegistered:Z

    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isMpsmActive:Z

    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isUdsActive:Z

    iput-boolean v1, v0, Lcom/android/server/am/pds/PDSTrigger;->isInDuration:Z

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mLastTimePolicyTrigger:J

    const-wide/32 v1, 0x493e0

    iput-wide v1, v0, Lcom/android/server/am/pds/PDSTrigger;->firstTrigger:J

    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyUDSIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    new-instance v1, Lcom/android/server/am/pds/PDSTrigger$1;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Lcom/android/server/am/pds/PDSTrigger$1;-><init>(Lcom/android/server/am/pds/PDSTrigger;I)V

    iput-object v1, v0, Lcom/android/server/am/pds/PDSTrigger;->mPolicyMPSMIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

    sput-object v0, Lcom/android/server/am/pds/PDSTrigger$PDSTriggerHolder;->INSTANCE:Lcom/android/server/am/pds/PDSTrigger;

    return-void
.end method
