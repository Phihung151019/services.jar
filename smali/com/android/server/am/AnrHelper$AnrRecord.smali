.class public final Lcom/android/server/am/AnrHelper$AnrRecord;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAboveSystem:Z

.field public final mActivityShortComponentName:Ljava/lang/String;

.field public final mApp:Lcom/android/server/am/ProcessRecord;

.field public final mAppInfo:Landroid/content/pm/ApplicationInfo;

.field public final mFirstPidFilePromise:Ljava/util/concurrent/Future;

.field public final mIsContinuousAnr:Z

.field public final mParentProcess:Lcom/android/server/wm/WindowProcessController;

.field public final mParentShortComponentName:Ljava/lang/String;

.field public final mPid:I

.field public final mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

.field public final mTimestamp:J

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AnrHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AnrHelper;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Lcom/android/server/wm/WindowProcessController;ZLcom/android/internal/os/TimeoutRecord;ZLjava/util/concurrent/Future;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->this$0:Lcom/android/server/am/AnrHelper;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimestamp:J

    iput-object p2, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget p1, p2, Lcom/android/server/am/ProcessRecord;->mPid:I

    iput p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mPid:I

    iget p1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    iput p1, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mUid:I

    iput-object p3, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mActivityShortComponentName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentShortComponentName:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mTimeoutRecord:Lcom/android/internal/os/TimeoutRecord;

    iput-object p4, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p6, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mParentProcess:Lcom/android/server/wm/WindowProcessController;

    iput-boolean p7, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mAboveSystem:Z

    iput-boolean p9, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mIsContinuousAnr:Z

    iput-object p10, p0, Lcom/android/server/am/AnrHelper$AnrRecord;->mFirstPidFilePromise:Ljava/util/concurrent/Future;

    return-void
.end method
