.class public final Lcom/android/server/am/MARsTrigger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAlarm:Landroid/app/AlarmManager;

.field public final mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mContext:Landroid/content/Context;

.field public mEmStateReceiverRegistered:Z

.field public final mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public final mIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public mLastTimeChangeClockTime:J

.field public mLastTimeChangeRealtime:J

.field public mMARsFirstTriggerPolicyAlarmIntent:Landroid/app/PendingIntent;

.field public final mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public final mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public final mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public mReceiverRegistered:Z

.field public final mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public mSMDBChangedReceiverRegistered:Z

.field public final mScpmPolicyReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public mScpmPolicyReceiverRegistered:Z

.field public final mTCPUReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public final mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public final mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public final mUserActionReceiver:Lcom/android/server/am/MARsTrigger$1;

.field public final mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

.field public user:Landroid/os/UserHandle;


# direct methods
.method public static -$$Nest$mactionToString(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo p0, "com.android.server.am.ACTION_UI_SET_ALWAYS_OPTIMIZING"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "User Set Always Optimizing"

    return-object p0

    :cond_0
    const-string/jumbo p0, "com.android.server.am.ACTION_PACKAGE_NOTUSED_RECENTLY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string/jumbo p0, "Package Not Used Recently"

    return-object p0

    :cond_1
    const-string/jumbo p0, "com.samsung.android.server.am.ACTION_UI_TRIGGER_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string/jumbo p0, "User Trigger Policy"

    return-object p0

    :cond_2
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_SBIKE_MODE_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string/jumbo p0, "Trigger S Bike Policy"

    return-object p0

    :cond_3
    const-string/jumbo p0, "com.android.server.am.MARS_TRIGGER_GAME_MODE_POLICY"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string/jumbo p0, "Trigger GAME MODE Policy"

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mEmStateReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiverRegistered:Z

    iput-boolean v0, p0, Lcom/android/server/am/MARsTrigger;->mScpmPolicyReceiverRegistered:Z

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTriggerIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicySBikeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger$1;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTCPUReceiver:Lcom/android/server/am/MARsTrigger$1;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mPolicyGameIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mTimeIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger$1;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserActionReceiver:Lcom/android/server/am/MARsTrigger$1;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mUserIntentReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger$1;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mAppStartUpIntentReceiver:Lcom/android/server/am/MARsTrigger$1;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mEmergencyStateChangedReceiver:Lcom/android/server/am/MARsTrigger$2;

    new-instance v0, Lcom/android/server/am/MARsTrigger$1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/server/am/MARsTrigger$1;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mSMDBChangedReceiver:Lcom/android/server/am/MARsTrigger$1;

    new-instance v0, Lcom/android/server/am/MARsTrigger$2;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/MARsTrigger$2;-><init>(Lcom/android/server/am/MARsTrigger;I)V

    iput-object v0, p0, Lcom/android/server/am/MARsTrigger;->mScpmPolicyReceiver:Lcom/android/server/am/MARsTrigger$2;

    return-void
.end method
