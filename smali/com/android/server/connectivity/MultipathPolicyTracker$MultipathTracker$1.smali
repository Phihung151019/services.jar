.class public final Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;
.super Landroid/app/usage/NetworkStatsManager$UsageCallback;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-direct {p0}, Landroid/app/usage/NetworkStatsManager$UsageCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onThresholdReached(ILjava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker$1;->this$1:Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;

    invoke-virtual {p0}, Lcom/android/server/connectivity/MultipathPolicyTracker$MultipathTracker;->updateMultipathBudget()V

    return-void
.end method
