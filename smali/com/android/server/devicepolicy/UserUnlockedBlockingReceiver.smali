.class public final Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mSemaphore:Ljava/util/concurrent/Semaphore;

.field public final mUserId:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/concurrent/Semaphore;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    iput p1, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "android.intent.extra.user_handle"

    const/16 v0, -0x2710

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget p2, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mUserId:I

    if-ne p1, p2, :cond_1

    iget-object p0, p0, Lcom/android/server/devicepolicy/UserUnlockedBlockingReceiver;->mSemaphore:Ljava/util/concurrent/Semaphore;

    invoke-virtual {p0}, Ljava/util/concurrent/Semaphore;->release()V

    :cond_1
    :goto_0
    return-void
.end method
