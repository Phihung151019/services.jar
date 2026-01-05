.class public final Lcom/android/server/am/pds/PDSTrigger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public firstTrigger:J

.field public isInDuration:Z

.field public isMpsmActive:Z

.field public isUdsActive:Z

.field public mAlarm:Landroid/app/AlarmManager;

.field public mContext:Landroid/content/Context;

.field public mIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mLastTimePolicyTrigger:J

.field public mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field public mPolicyIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mPolicyMPSMIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mPolicyUDSIntentReceiver:Lcom/android/server/am/pds/PDSTrigger$1;

.field public mReceiverRegistered:Z

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static -$$Nest$mactionToString(Lcom/android/server/am/pds/PDSTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const-string/jumbo p0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "User Trigger Policy"

    return-object p0

    :cond_0
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_UDS_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "Trigger UDS(Ultra Data Saving) Policy"

    return-object p0

    :cond_1
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_MPSM_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "Trigger MPSM Policy"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
