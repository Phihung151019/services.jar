.class public final Lcom/android/server/inputmethod/StartInputInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# static fields
.field public static final sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mClientBindSequenceNumber:I

.field public final mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public final mImeDisplayId:I

.field public final mImeId:Ljava/lang/String;

.field public final mImeToken:Landroid/os/IBinder;

.field public final mImeUserId:I

.field public final mRestarting:Z

.field public final mSequenceNumber:I

.field public final mStartInputReason:I

.field public final mTargetDisplayId:I

.field public final mTargetUserId:I

.field public final mTargetWindow:Landroid/os/IBinder;

.field public final mTargetWindowSoftInputMode:I

.field public final mTimestamp:J

.field public final mWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(ILandroid/os/IBinder;ILjava/lang/String;IZIILandroid/os/IBinder;Landroid/view/inputmethod/EditorInfo;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/inputmethod/StartInputInfo;->sSequenceNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    iput v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    iput p1, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    iput-object p2, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    iput-object p4, p0, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    iput p5, p0, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    iput-boolean p6, p0, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    iput p7, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    iput p8, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    iput-object p9, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    iput-object p10, p0, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput p11, p0, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    iput p12, p0, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    return-void
.end method
