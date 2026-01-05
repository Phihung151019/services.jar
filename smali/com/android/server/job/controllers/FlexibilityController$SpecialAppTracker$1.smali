.class public final Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p2, "android.os.action.POWER_SAVE_WHITELIST_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string/jumbo p2, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->updateCarrierPrivilegedCallbackRegistration()V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker$1;->this$1:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->this$0:Lcom/android/server/job/controllers/FlexibilityController;

    iget-object p1, p1, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    new-instance p2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {p2, v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
