.class public final synthetic Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

.field public final synthetic f$1:Landroid/os/IScreenTimeoutPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;Landroid/os/IScreenTimeoutPolicyListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iput-object p2, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;->f$1:Landroid/os/IScreenTimeoutPolicyListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$$ExternalSyntheticLambda1;->f$1:Landroid/os/IScreenTimeoutPolicyListener;

    invoke-virtual {v0, p0}, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->notifyListenerIfNeeded(Landroid/os/IScreenTimeoutPolicyListener;)V

    return-void
.end method
