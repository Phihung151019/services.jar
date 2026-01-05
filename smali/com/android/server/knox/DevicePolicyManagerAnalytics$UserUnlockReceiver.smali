.class public final Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;


# direct methods
.method public constructor <init>(Lcom/android/server/knox/DevicePolicyManagerAnalytics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;->this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p2, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->userUnlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;->this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    iget-object p2, p2, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;

    invoke-direct {v0, p0}, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver$1;-><init>(Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;)V

    const-wide/32 v1, 0xea60

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;->this$0:Lcom/android/server/knox/DevicePolicyManagerAnalytics;

    iget-object p0, p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->mUserUnlockReceiver:Lcom/android/server/knox/DevicePolicyManagerAnalytics$UserUnlockReceiver;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p0, 0x0

    sput-boolean p0, Lcom/android/server/knox/DevicePolicyManagerAnalytics;->userUnlockReceiverRegistered:Z

    :cond_1
    :goto_0
    return-void
.end method
