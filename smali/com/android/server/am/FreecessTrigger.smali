.class public final Lcom/android/server/am/FreecessTrigger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mContext:Landroid/content/Context;

.field public final mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

.field public final mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

.field public mIsRegisteredReceiverForEnhancedFreecess:Z

.field public final mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

.field public final mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/FreecessTrigger;->mIsRegisteredReceiverForEnhancedFreecess:Z

    new-instance v0, Lcom/android/server/am/FreecessTrigger$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreecessTrigger$1;-><init>(Lcom/android/server/am/FreecessTrigger;)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiver:Lcom/android/server/am/FreecessTrigger$1;

    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mPkgIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mSmartSwitchIntentReceiver:Lcom/android/server/am/FreecessTrigger$2;

    new-instance v0, Lcom/android/server/am/FreecessTrigger$2;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/am/FreecessTrigger$2;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/FreecessTrigger;->mIntentReceiverForBird:Lcom/android/server/am/FreecessTrigger$2;

    return-void
.end method
