.class public Lcom/android/server/am/KillPolicyManager$AutoRestartParameterReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-string/jumbo p0, "MIN_TRIGGER_SIZE"

    const/16 p1, 0xa

    invoke-virtual {p2, p0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p0

    const-string/jumbo p1, "NEVER_COLLECT_WITHIN"

    const/16 v0, 0xc

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "COMPACT_TRIGGER_SIZE"

    const/16 v1, 0x12c

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string/jumbo v1, "NATIVE_FLOOD_RATIO"

    const/16 v2, 0x1e

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v3, "SYSPERS_FLOOD_RATIO"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    sget-object v2, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_MIN_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result v2

    if-eqz v2, :cond_0

    sput p0, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    :cond_0
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NEVER_COLLECT_WITHIN:Ljava/time/temporal/ValueRange;

    int-to-long v2, p1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_1

    sput p1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    :cond_1
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_COMPACT_TRIGGER_SIZE:Ljava/time/temporal/ValueRange;

    int-to-long v2, v0

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_2

    sput v0, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    :cond_2
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_NATIVE_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    int-to-long v2, v1

    invoke-virtual {p0, v2, v3}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_3

    sput v1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    :cond_3
    sget-object p0, Lcom/android/server/am/KillPolicyManager;->RANGE_AUTO_RESTART_SYSPERS_FLOOD_RATIO:Ljava/time/temporal/ValueRange;

    int-to-long v0, p2

    invoke-virtual {p0, v0, v1}, Ljava/time/temporal/ValueRange;->isValidIntValue(J)Z

    move-result p0

    if-eqz p0, :cond_4

    sput p2, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    :cond_4
    sget-boolean p0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Auto Restart Parameter Updated. {sMinTriggerSize="

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/android/server/am/KillPolicyManager;->sMinTriggerSize:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNeverCollectWithin="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/KillPolicyManager;->sNeverCollectWithin:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sCompactTriggerSize="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/KillPolicyManager;->sCompactTriggerSize:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sNativeFloodRatio="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/KillPolicyManager;->sNativeFloodRatio:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", sSyspersFloodRatio="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/KillPolicyManager;->sSyspersFloodRatio:I

    const-string/jumbo p2, "}"

    const-string v0, "ActivityManager_kpm"

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_5
    return-void
.end method
