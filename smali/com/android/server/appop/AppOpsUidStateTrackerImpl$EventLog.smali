.class public final Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCommitUidStateLog:[[I

.field public mCommitUidStateLogHead:I

.field public mCommitUidStateLogSize:I

.field public final mCommitUidStateLogTimestamps:[J

.field public final mEvalForegroundModeLog:[[I

.field public mEvalForegroundModeLogHead:I

.field public mEvalForegroundModeLogSize:I

.field public final mEvalForegroundModeLogTimestamps:[J

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mUpdateUidProcStateLog:[[I

.field public mUpdateUidProcStateLogHead:I

.field public mUpdateUidProcStateLogSize:I

.field public final mUpdateUidProcStateLogTimestamps:[J


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/4 v2, 0x3

    const/4 v3, 0x1

    aput v2, v1, v3

    const/4 v2, 0x0

    const/16 v4, 0xc8

    aput v4, v1, v2

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    new-array v1, v0, [I

    const/4 v6, 0x4

    aput v6, v1, v3

    aput v4, v1, v2

    invoke-static {v5, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[I

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    new-array v1, v4, [J

    iput-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    new-array v0, v0, [I

    const/4 v1, 0x5

    aput v1, v0, v3

    aput v4, v0, v2

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    iput v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    return-void
.end method
