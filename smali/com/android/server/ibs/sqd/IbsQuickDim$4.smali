.class public final Lcom/android/server/ibs/sqd/IbsQuickDim$4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$4;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$4;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim;->mPowerService:Landroid/os/IPowerManager;

    return-void
.end method
