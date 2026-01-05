.class public final Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mAttributionChainId:I

.field public mAttributionFlags:I

.field public mClientId:Landroid/os/IBinder;

.field public mFlags:I

.field public mNumUnfinishedStarts:I

.field public mOnDeath:Ljava/lang/Runnable;

.field public mProxy:Landroid/app/AppOpsManager$OpEventProxyInfo;

.field public mStartElapsedTime:J

.field public mStartTime:J

.field public mUidState:I

.field public mVirtualDeviceId:I


# virtual methods
.method public final binderDied()V
    .locals 0

    iget-object p0, p0, Lcom/android/server/appop/AttributedOp$InProgressStartOpEvent;->mOnDeath:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
