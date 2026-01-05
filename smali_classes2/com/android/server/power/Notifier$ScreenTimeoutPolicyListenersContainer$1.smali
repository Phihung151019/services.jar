.class public final Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;
.super Landroid/os/RemoteCallbackList;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/os/IScreenTimeoutPolicyListener;

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer$1;->this$1:Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;

    iget-object p0, p0, Lcom/android/server/power/Notifier$ScreenTimeoutPolicyListenersContainer;->mLastReportedState:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
