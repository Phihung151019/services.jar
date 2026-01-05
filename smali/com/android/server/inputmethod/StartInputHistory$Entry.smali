.class public final Lcom/android/server/inputmethod/StartInputHistory$Entry;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mClientBindSequenceNumber:I

.field public mEditorInfo:Landroid/view/inputmethod/EditorInfo;

.field public mImeDisplayId:I

.field public mImeId:Ljava/lang/String;

.field public mImeTokenString:Ljava/lang/String;

.field public mImeUserId:I

.field public mRestarting:Z

.field public mSequenceNumber:I

.field public mStartInputReason:I

.field public mTargetDisplayId:I

.field public mTargetUserId:I

.field public mTargetWindowSoftInputMode:I

.field public mTargetWindowString:Ljava/lang/String;

.field public mTimestamp:J

.field public mWallTime:J


# virtual methods
.method public final set(Lcom/android/server/inputmethod/StartInputInfo;)V
    .locals 2

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mSequenceNumber:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mSequenceNumber:I

    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTimestamp:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTimestamp:J

    iget-wide v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mWallTime:J

    iput-wide v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mWallTime:J

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeUserId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeToken:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeTokenString:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeDisplayId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mImeId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mImeId:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mStartInputReason:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mStartInputReason:I

    iget-boolean v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mRestarting:Z

    iput-boolean v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mRestarting:Z

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetUserId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetUserId:I

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetDisplayId:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetDisplayId:I

    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindow:Landroid/os/IBinder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowString:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iput-object v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mEditorInfo:Landroid/view/inputmethod/EditorInfo;

    iget v0, p1, Lcom/android/server/inputmethod/StartInputInfo;->mTargetWindowSoftInputMode:I

    iput v0, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mTargetWindowSoftInputMode:I

    iget p1, p1, Lcom/android/server/inputmethod/StartInputInfo;->mClientBindSequenceNumber:I

    iput p1, p0, Lcom/android/server/inputmethod/StartInputHistory$Entry;->mClientBindSequenceNumber:I

    return-void
.end method
