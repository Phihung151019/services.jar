.class public final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final LOGGED_AP_OPS:[I


# instance fields
.field public final mAcceptedOps:Landroid/util/SparseIntArray;

.field public final mAppOpModes:Landroid/util/SparseIntArray;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mCounterLock:Ljava/lang/Object;

.field public mDestroyed:Z

.field public mNumFgs:I

.field public final mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

.field public final mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

.field public final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field public final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method public static -$$Nest$mincrementOpCountIfNeeded(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v1, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p2, v1, :cond_3

    iget-object p2, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget p2, p2, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 p2, 0x1

    if-nez p3, :cond_0

    move p3, p2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    :goto_1
    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p3

    if-gez p3, :cond_2

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0, p3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p3, p1}, Landroid/util/SparseIntArray;->setValueAt(II)V

    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0x1b

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_0

    aget v2, v1, v0

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v2, v3, v4}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2, v3}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
