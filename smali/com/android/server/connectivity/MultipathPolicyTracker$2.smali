.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$2;
.super Landroid/net/NetworkPolicyManager$Listener;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    invoke-direct {p0}, Landroid/net/NetworkPolicyManager$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMeteredIfacesChanged([Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$2;->this$0:Lcom/android/server/connectivity/MultipathPolicyTracker;

    iget-object p1, p1, Lcom/android/server/connectivity/MultipathPolicyTracker;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/connectivity/MultipathPolicyTracker$2;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
