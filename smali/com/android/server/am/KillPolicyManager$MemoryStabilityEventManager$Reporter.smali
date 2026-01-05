.class public final Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public mHasReportedAtLeastOnce:Z

.field public final mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public mLastRealtimeMinutes:I

.field public mLastUptimeMinutes:I

.field public final mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->this$1:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager;

    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mLastCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mTempCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    new-instance p1, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    invoke-direct {p1}, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Reporter;->mDiffCounter:Lcom/android/server/am/KillPolicyManager$MemoryStabilityEventManager$Counter;

    return-void
.end method
