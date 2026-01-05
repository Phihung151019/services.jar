.class public final Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final PMM_CRITICAL_SCORE_THRESHOLD:F

.field public static final TRIGGER_MIN_INTERVAL:J

.field public static mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;


# instance fields
.field public mChimeraTriggerRequired:Z

.field public final mContext:Landroid/content/Context;

.field public mLastPolicyScore:F

.field public mLastTriggeredTime:J


# direct methods
.method public static -$$Nest$smgetInstance(Landroid/content/Context;)Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    .locals 2

    const-class v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    invoke-direct {v1, p0}, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "persist.sys.kpm.debug.chimera_critical_score_threshold"

    const-string v1, "3.0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    sput v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->PMM_CRITICAL_SCORE_THRESHOLD:F

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofDays(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.kpm.debug.chimera_trigger_min_interval"

    invoke-static {v1, v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->TRIGGER_MIN_INTERVAL:J

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mInstance:Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastPolicyScore:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mChimeraTriggerRequired:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mLastTriggeredTime:J

    const-string v0, "ActivityManager"

    const-string v1, "ChimeraTriggerManager() - start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ChimeraTriggerManager;->mContext:Landroid/content/Context;

    return-void
.end method
