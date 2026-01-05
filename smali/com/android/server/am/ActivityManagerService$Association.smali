.class public final Lcom/android/server/am/ActivityManagerService$Association;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCount:I

.field public mLastState:I

.field public mLastStateUptime:J

.field public mNesting:I

.field public final mSourceProcess:Ljava/lang/String;

.field public final mSourceUid:I

.field public mStartTime:J

.field public final mStateTimes:[J

.field public final mTargetComponent:Landroid/content/ComponentName;

.field public final mTargetProcess:Ljava/lang/String;

.field public final mTargetUid:I

.field public mTime:J


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x15

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mLastState:I

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/ActivityManagerService$Association;->mStateTimes:[J

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceUid:I

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$Association;->mSourceProcess:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetUid:I

    iput-object p5, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetComponent:Landroid/content/ComponentName;

    iput-object p4, p0, Lcom/android/server/am/ActivityManagerService$Association;->mTargetProcess:Ljava/lang/String;

    return-void
.end method
