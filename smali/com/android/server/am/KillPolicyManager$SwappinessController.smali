.class public final Lcom/android/server/am/KillPolicyManager$SwappinessController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCurrentValue:I

.field public final mDefaultValue:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/KillPolicyManager$SwappinessController;->getSwappinessFromProc()I

    move-result v0

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mDefaultValue:I

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$SwappinessController;->mCurrentValue:I

    const-string/jumbo p0, "SwappinessController() - default value: "

    const-string v1, "ActivityManager"

    invoke-static {v0, p0, v1}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getSwappinessFromProc()I
    .locals 5

    const/4 v0, 0x0

    const/16 v1, 0x2020

    filled-new-array {v1}, [I

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [J

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v0

    const-string v3, "/proc/sys/vm/swappiness"

    const/4 v4, 0x0

    invoke-static {v3, v1, v4, v2, v4}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    aget-wide v0, v2, v0

    long-to-int v0, v0

    return v0
.end method
